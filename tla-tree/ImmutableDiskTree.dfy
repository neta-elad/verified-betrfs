include "MissingLibrary.dfy"
include "KVTypes.dfy"
include "Disk.dfy"

module TreeDisk refines Disk {
import opened KVTypes

type TableIndex = int
predicate WFTableIndex(ti:TableIndex)   // There are two tables.
{
    0 <= ti <= 1
}
function OppositeTableIndex(ti:TableIndex) : TableIndex
{
    1 - ti
}

datatype Slot = Value(datum:Datum) | Pointer(idx:int) | Empty
datatype Node = Node(pivots:seq<Key>, slots:seq<Slot>)
datatype Sector =
    | Superblock(liveTable:TableIndex)
    | TableSector
    | NodeSector(node:Node)
} // module TreeDisk



// TODO I was lying awake thinking: we probably actually want three tables. The persistent table,
// which is on disk (and never in memory except to prime the ephemeral table), the ephemeral table,
// and then a checkpointed copy of the ephemeral table so that a commit writeback can proceed in
// parallel with ongoing activity. But I'm not sure it's worth frying that fish now, when we have
// big data structure changes to make later.

module CrashSafeTree {
import opened MissingLibrary
import opened KVTypes
import TreeDisk

type LBA = TreeDisk.LBA
type TableIndex = TreeDisk.TableIndex
type Slot = TreeDisk.Slot
type Node = TreeDisk.Node
type Sector = TreeDisk.Sector

type View = map<LBA, Sector>    // A view of the disk, either through a cache or just by looking at the disk.

datatype CacheLineState = Dirty | Clean
datatype CacheLine = CacheLine(sector:Sector, state:CacheLineState)
type Cache = map<LBA, CacheLine>
function {:opaque} ViewOfCache(cache:Cache) : View
{
    map lba | lba in cache :: cache[lba].sector
}


datatype NBA = Unused | Used(lba:LBA)  // A Node Block Address gets offset into the node-sectors region of the disk.

datatype Constants = Constants(
    disk:TreeDisk.Constants,
    tableEntries:int,    // How many entries in the table (allocatable data blocks on the disk)
    tableSectors:int     // How many sectors to set aside for each indirection table
    )

type Table = seq<NBA>   // An indirection table mapping addresses (indices into the table) to NBAs

predicate WFTable(k:Constants, table:Table)
{
    |table| == k.tableEntries
}

function HeaderSize(k:Constants) : int
{
    1                       // one superblock
    + 2*k.tableSectors      // two indirection tables
}

function DiskSize(k:Constants) : int
{
    HeaderSize(k)
    + k.tableEntries        // and a bunch of rewritable data sectors
}

function LbaForNba(k:Constants, nba:NBA) : LBA
    requires nba.Used?
{
    HeaderSize(k) + nba.lba
}

datatype Variables = Variables(
    disk:TreeDisk.Variables,
    cache:Cache,
    ephemeralTable:Table,    // The ephemeral table, ready to write out on a commit

    // True only once the ephemeral table has a history tracking back to the
    // persistent table. (Cache can operate regardless of ready flag.)
    ready:bool
    )


// The superblock lives at the beginning of the disk
function SUPERBLOCK_LBA() : LBA { 0 }

predicate WFNode(node:Node) {
    |node.pivots| == |node.slots| - 1
}

predicate WFVariables(k:Constants, s:Variables)
{
    WFTable(k, s.ephemeralTable)  // maintained as an invariant, so not unreasonable to conjoin to actions.
}

function ROOT_ADDR() : int { 0 }    // Address of the root node in either table

// We assume marshalling and unmarshalling functions for Tables to sectors.
function UnmarshallTable(k:Constants, sectors:seq<Sector>) : (tbl:Table)
    requires |sectors| == k.tableSectors
    ensures WFTable(k, tbl)

function MarshallTable(k:Constants, tbl:Table) : (sectors:seq<Sector>)
    requires WFTable(k, tbl)
    ensures |sectors| == k.tableSectors

lemma {:axiom} Marshalling(k:Constants)
    ensures forall t :: WFTable(k, t) ==>
        UnmarshallTable(k, MarshallTable(k, t)) == t
    ensures forall sectors :: |sectors| == k.tableSectors ==>
        MarshallTable(k, UnmarshallTable(k, sectors)) == sectors    // a bit too strong?

///////////////////////////////////////////////////////////////////////////////////////
// The view predicates are usable either on the cache (running case) or against the
// disk image (Init predicate).

predicate SectorInView(view:View, lba:LBA, sector:Sector)
{
    && lba in view
    && view[lba] == sector
}

function TableBegin(k:Constants, ti:TableIndex) : LBA
    requires TreeDisk.WFTableIndex(ti)
{
    1 + k.tableSectors * ti
}

// Everything you need to look up the persistent table
datatype TableLookup = TableLookup(super:Sector, ti:TableIndex, table:Table, sectors:seq<Sector>)

predicate WFTableLookup(k:Constants, tl:TableLookup)
{
    && TreeDisk.WFTableIndex(tl.ti)
    && WFTable(k, tl.table)
}

predicate ValidTableOffset(k:Constants, tableOffset:int)
{
    0 <= tableOffset < k.tableEntries
}

predicate ValidTableSectorIndex(k:Constants, tblSectorIdx:int)
{
    0 <= tblSectorIdx < k.tableSectors
}

function LbaForTableOffset(k:Constants, ti:TableIndex, tblSectorIdx:int) : LBA
    requires TreeDisk.WFTableIndex(ti)
    requires ValidTableSectorIndex(k, tblSectorIdx)
{
    TableBegin(k, ti) + tblSectorIdx
}

predicate TableInView(k:Constants, view:View, tl:TableLookup)
    requires TreeDisk.WFTableIndex(tl.ti)
{
    && |tl.sectors| == k.tableSectors
    && (forall sectorIdx :: ValidTableSectorIndex(k, sectorIdx) ==>
            SectorInView(view, LbaForTableOffset(k, tl.ti, sectorIdx), tl.sectors[sectorIdx]))
    && tl.table == UnmarshallTable(k, tl.sectors)
}

predicate PersistentTableIndexInView(view:View, ti:TableIndex, super:Sector)
{
    && SectorInView(view, SUPERBLOCK_LBA(), super)
    && super == TreeDisk.Superblock(ti)
    && TreeDisk.WFTableIndex(ti)    // If you need to fsck, this spec stalls.
}

//////////////////////////////////////////////////////////////////////////////
// These predicates are shorthands useful in the running case.

predicate CachedNodeRead(k:Constants, s:Variables, nba:NBA, node:Node)
    requires nba.Used?
{
    && SectorInView(ViewOfCache(s.cache), LbaForNba(k, nba), TreeDisk.NodeSector(node))
    // We toss WFNode in here to keep other expressions tidy; as with any WF, this can
    // create a liveness problem (can't read that disk sector with a malformed node).
    // Even if we don't prove liveness, we can mitigate that concern by including a
    // WF invariant.
    && WFNode(node)
}

predicate KnowTable(k:Constants, s:Variables, tl:TableLookup)
    requires TreeDisk.WFTableIndex(tl.ti)
{
    TableInView(k, ViewOfCache(s.cache), tl)
}

predicate KnowPersistentTableIndex(k:Constants, s:Variables, ti:TableIndex, super:Sector)
{
    PersistentTableIndexInView(ViewOfCache(s.cache), ti, super)
}

predicate KnowPersistentTable(k:Constants, s:Variables, tl:TableLookup)
{
    && KnowPersistentTableIndex(k, s, tl.ti, tl.super)
    && KnowTable(k, s, tl)
}

//////////////////////////////////////////////////////////////////////////////
// Ranges
datatype Range = Range(loinc:Key, hiexc:Key)

function FULL_RANGE() : Range
{
    Range(MIN_KEY(), MAX_KEY())
}

predicate RangeContains(range:Range, key:Key)
{
    && KeyLeq(range.loinc, key)
    && KeyLe(key, range.hiexc)
}

predicate ValidSlotIndex(node:Node, idx:int)
{
     0 <= idx < |node.slots|
}

// If all of node's keys are bounded by nodeRange, then
// the keys in the i'th slot of node are bounded by range.
function RangeBoundForSlotIdx(node:Node, nodeRange:Range, idx:int) : (range:Range)
    requires WFNode(node)
    requires ValidSlotIndex(node, idx)
{
    Range(
        if idx==0 then nodeRange.loinc else node.pivots[idx-1],
        if idx==|node.slots|-1 then nodeRange.hiexc else node.pivots[idx])
}

//////////////////////////////////////////////////////////////////////////////
// Lookup
datatype Layer = Layer(
    addr:int,
    node:Node,      // the node at the addr
    slot:int,       // the slot pointing to the next node below
    slotRange:Range     // the range that bounds this slot (and hence the node below)
    )

datatype Lookup = Lookup(layers:seq<Layer>)

predicate WFLookup(k:Constants, lookup:Lookup)
{
    0 < |lookup.layers|
}

predicate LookupHasValidNodes(lookup:Lookup)
{
    forall i :: 0<=i<|lookup.layers| ==> WFNode(lookup.layers[i].node)
}

predicate LookupHasValidSlotIndices(lookup:Lookup)
{
    forall i :: 0<=i<|lookup.layers| ==>
        && var layer := lookup.layers[i];
        && ValidSlotIndex(layer.node, layer.slot)
}

predicate ValidAddress(k:Constants, addr:int)
{
    0 <= addr < k.tableEntries
}

predicate LookupHasValidAddresses(k:Constants, lookup:Lookup)
{
    forall i :: 0<=i<|lookup.layers| ==> ValidAddress(k, lookup.layers[i].addr)
}

predicate LookupHonorsPointerLinks(lookup:Lookup)
    requires LookupHasValidSlotIndices(lookup)
{
    forall i :: 0<=i<|lookup.layers| ==>
        var layer := lookup.layers[i];
        if i==0
        then layer.addr == ROOT_ADDR()
        else
            var uplayer := lookup.layers[i-1];
            uplayer.node.slots[uplayer.slot] == TreeDisk.Pointer(layer.addr)
}

function NodeRangeAtLayer(lookup:Lookup, i:int) : Range
    requires 0<=i<|lookup.layers|
{
    if i==0 then FULL_RANGE() else lookup.layers[i-1].slotRange
}

predicate LookupHonorsRanges(lookup:Lookup)
    requires LookupHasValidNodes(lookup)
    requires LookupHasValidSlotIndices(lookup)
{
    forall i :: 0<=i<|lookup.layers| ==>
        && var layer := lookup.layers[i];
        && RangeBoundForSlotIdx(layer.node, NodeRangeAtLayer(lookup, i), layer.slot) == layer.slotRange
}

predicate LookupMatchesCache(k:Constants, s:Variables, lookup:Lookup)
    requires WFLookup(k, lookup)
    requires WFTable(k, s.ephemeralTable)
    requires LookupHasValidAddresses(k, lookup)
{
    forall i :: 0<=i<|lookup.layers| ==> (
        && var layer := lookup.layers[i];
        && var nba := s.ephemeralTable[layer.addr];
        && nba.Used?
        && CachedNodeRead(k, s, nba, layer.node)
    )
}

predicate ValidLookup(k:Constants, s:Variables, lookup:Lookup)
{
    && WFLookup(k, lookup)
    && LookupHasValidNodes(lookup)
    && LookupHasValidSlotIndices(lookup)
    && LookupHasValidAddresses(k, lookup)
    && LookupHonorsPointerLinks(lookup)
    && LookupHonorsRanges(lookup)
    && WFTable(k, s.ephemeralTable)
    && LookupMatchesCache(k, s, lookup)
}

predicate SlotSatisfiesQuery(slot:Slot, datum:Datum)
{
    || (slot.Value? && slot.datum == datum)
    || (slot.Value? && slot.datum.key != datum.key && datum.value == EmptyValue())
    || (slot.Empty? && datum.value == EmptyValue())
}

// The slot to which this lookup leads.
function TerminalSlot(k:Constants, lookup:Lookup) : Slot
    requires WFLookup(k, lookup)
    requires LookupHasValidSlotIndices(lookup)
{
    var lastLayer := Last(lookup.layers);
    lastLayer.node.slots[lastLayer.slot]
}

predicate LookupSatisfiesQuery(k:Constants, s:Variables, lookup:Lookup, datum:Datum)
{
    && ValidLookup(k, s, lookup)
    && SlotSatisfiesQuery(TerminalSlot(k, lookup), datum)
}

predicate QueryAction(k:Constants, s:Variables, s':Variables, datum:Datum, lookup:Lookup)
{
    && s.ready
    && LookupSatisfiesQuery(k, s, lookup, datum)

    && s' == s
}

//////////////////////////////////////////////////////////////////////////////
// Mutations

function NodeReplaceSlot(node:Node, i:int, slot:Slot) : Node
    requires WFNode(node)
    requires 0<=i<|node.slots|
{
    TreeDisk.Node(node.pivots,
        node.slots[..i] + [slot] + node.slots[i+1..])
}

// Replace slot (which starts at pivots[slot-1]) with newSlots, subdivided by newPivots.
function NodeInsertSlots(node:Node, slot:int, newPivots:seq<Key>, newSlots:seq<Slot>) : Node
    requires WFNode(node)
    requires 0<=slot<|node.slots|
    requires |newSlots| == |newPivots| + 1
{
    TreeDisk.Node(
        node.pivots[..slot] + newPivots + node.pivots[slot..],
        node.slots[..slot] + newSlots + node.slots[slot+1..])
}


function ReplaceSlotForInsert(node:Node, idx:int, newDatum:Datum) : Node
    requires WFNode(node)
    requires ValidSlotIndex(node, idx)
    requires !node.slots[idx].Pointer?
{
    var slot := node.slots[idx];

    if slot.Empty? || newDatum.key == slot.datum.key
        // Replace an empty or same-key datum in place
    then NodeReplaceSlot(node, idx, TreeDisk.Value(newDatum))
    else if KeyLe(newDatum.key, slot.datum.key)
        // New datum goes to the left, so we'll split a pivot to the right with the old key
    then NodeInsertSlots(node, idx, [slot.datum.key], [TreeDisk.Value(newDatum), slot])
        // New datum goes to the right, so we'll split a pivot with the new key
    else NodeInsertSlots(node, idx, [newDatum.key], [slot, TreeDisk.Value(newDatum)])
}

predicate NBAUnusedInTable(k:Constants, table:Table, nba:NBA)
    requires WFTable(k, table)
{
    forall offset :: ValidTableOffset(k, offset) ==> table[offset] != nba
    
}

predicate AllocateNBA(k:Constants, s:Variables, nba:NBA, persistentTl:TableLookup)
    requires WFTable(k, s.ephemeralTable)
{
    && nba.Used?
    // Not used in the ephemeral table
    && NBAUnusedInTable(k, s.ephemeralTable, nba)
    // And not used in the persistent table
    && KnowPersistentTable(k, s, persistentTl)
    && NBAUnusedInTable(k, persistentTl.table, nba)
}

predicate AllocateAddr(k:Constants, s:Variables, childAddr:int)
    requires WFTable(k, s.ephemeralTable)
{
    && 0 <= childAddr < k.tableEntries
    && s.ephemeralTable[childAddr].Unused?
}

function WriteSectorToCache(k:Constants, cache:Cache, lba:LBA, sector:Sector) : Cache
{
    cache[lba := CacheLine(sector, Dirty)]
}

function WriteNodeToCache(k:Constants, cache:Cache, nba:NBA, node:Node) : Cache
    requires nba.Used?
{
    WriteSectorToCache(k, cache, LbaForNba(k, nba), TreeDisk.NodeSector(node))
}

datatype NodeEdit = NodeEdit(   // What you need to know to edit a slot of a node in the tree:
    lookup:Lookup,              // Path to the adjusted node, to prove that it belongs to the tree
    tableLookup:TableLookup,    // Requir
    replacementNba:NBA,         // node address for the replacement node (with the changed slot)
    replacementNode:Node        // the new node that will replace the one being edited
    )

function EditLast(edit:NodeEdit) : Layer
    requires 0 < |edit.lookup.layers|
{
    Last(edit.lookup.layers)
}

// This is a prototype action -- it has both enabling conditions and transition
// relations.  The caller supplies an additional constraint that ensures the
// 'edit' record does what its action needs.
predicate ApplyEdit(k:Constants, s:Variables, s':Variables, edit:NodeEdit, datum:Datum)
{
    && s.ready
    && WFVariables(k, s)
    && LookupSatisfiesQuery(k, s, edit.lookup, datum)
    && AllocateNBA(k, s, edit.replacementNba, edit.tableLookup)

    && TreeDisk.Idle(k.disk, s.disk, s'.disk)
    && s'.cache == WriteNodeToCache(k, s.cache, edit.replacementNba, edit.replacementNode)
    // Through the magic of table indirection, lastLayer.node's child is suddenly switched to point to replacementNode.
    && s'.ephemeralTable == s.ephemeralTable[EditLast(edit).addr := edit.replacementNba]
    && s'.ready
}

predicate InsertAction(k:Constants, s:Variables, s':Variables, edit:NodeEdit, datum:Datum)
{
    && ApplyEdit(k, s, s', edit, datum)
    && edit.replacementNode == ReplaceSlotForInsert(EditLast(edit).node, EditLast(edit).slot, datum)
}

// Delete is un-insert.
predicate ReplacesSlotForDelete(oldNode:Node, newNode:Node, idx:int, deletedDatum:Datum)
{
    // Caller is 'existing' a newNode into being; we need to force it to satisfy the preconditions
    // for ChildEquivalentToSlotGroup.
    // (TODO We could just reduce things to this version, and accept the fact
    // that this check will duplicate what the invariant already does.)
    && WFNode(newNode)
    && ValidSlotIndex(newNode, idx)
    && !newNode.slots[idx].Pointer?
    && oldNode == ReplaceSlotForInsert(newNode, idx, deletedDatum)
}

predicate DeleteAction(k:Constants, s:Variables, s':Variables, edit:NodeEdit, datum:Datum)
{
    && ApplyEdit(k, s, s', edit, datum)
    && ReplacesSlotForDelete(EditLast(edit).node, edit.replacementNode, EditLast(edit).slot, datum)
}

predicate ChildEquivalentToSlotGroup(directNode:Node, replacedSlot:int, indirectNode:Node, childAddr:int, childNode:Node)
    requires WFNode(indirectNode)
    requires 0<=replacedSlot<|indirectNode.slots|
    requires |childNode.slots| == |childNode.pivots| + 1
{
    && directNode == NodeInsertSlots(indirectNode, replacedSlot, childNode.pivots, childNode.slots)
    && indirectNode.slots[replacedSlot] == TreeDisk.Pointer(childAddr)
}

predicate ChildEquivalentToSlotGroupForExpand(directNode:Node, replacedSlot:int, indirectNode:Node, childAddr:int, childNode:Node)
{
    // Caller is 'existing' an indirectNode into being; we need to force it to satisfy the preconditions
    // for ChildEquivalentToSlotGroup.
    // (TODO We could just reduce things to this version, and accept the fact
    // that this check will duplicate what the invariant already does.)
    && WFNode(indirectNode)
    && 0<=replacedSlot<|indirectNode.slots|
    && |childNode.slots| == |childNode.pivots| + 1
    && ChildEquivalentToSlotGroup(directNode, replacedSlot, indirectNode, childAddr, childNode)
}

datatype Janitorial = Janitorial(
    edit:NodeEdit,              // The Lookup and edit info for the parent node being modified
    childAddr:int,              // table index where child is coming from or allocated to
    childNba:NBA,               // node address where child is coming from or allocated to
    childNode:Node,             // child node exchanging places with subrange of parent slots
    childNba':NBA               // the table reference for childAddr after the action
    )

predicate JanitorialAction(k:Constants, s:Variables, s':Variables, j:Janitorial)
    requires j.childNba.Used?
    requires ValidAddress(k, j.childAddr)
{
    && s.ready
    && WFVariables(k, s)
    && ValidLookup(k, s, j.edit.lookup)
    && AllocateNBA(k, s, j.edit.replacementNba, j.edit.tableLookup)

    && TreeDisk.Idle(k.disk, s.disk, s'.disk)

    // The second write (j.childNba) "writes" the child to memory in the expand
    // case, and is a no-op in the contract case.
    && s'.cache == WriteNodeToCache(k,
                    WriteNodeToCache(k, s.cache, j.edit.replacementNba, j.edit.replacementNode),
                    j.childNba, j.childNode)

    // Through the magic of table indirection, lastLayer.node's parent is
    // suddenly switched to point to replacementNode.
    && s'.ephemeralTable ==
        s.ephemeralTable[EditLast(j.edit).addr := j.edit.replacementNba][j.childAddr := j.childNba']
    && s'.ready
}

predicate ExpandAction(k:Constants, s:Variables, s':Variables, j:Janitorial)
{
    && WFTable(k, s.ephemeralTable) // mai
    && AllocateNBA(k, s, j.childNba, j.edit.tableLookup)
    && AllocateAddr(k, s, j.childAddr)
    && JanitorialAction(k, s, s', j)
    && ChildEquivalentToSlotGroupForExpand(EditLast(j.edit).node, EditLast(j.edit).slot, j.edit.replacementNode, j.childAddr, j.childNode)
    && j.childNba' == j.childNba  // record the allocated reference
}

predicate ContractAction(k:Constants, s:Variables, s':Variables, j:Janitorial)
{
    && WFVariables(k, s)
    && ValidAddress(k, j.childAddr)
    && s.ephemeralTable[j.childAddr].Used?
    && j.childNba == s.ephemeralTable[j.childAddr]
    && JanitorialAction(k, s, s', j)
    && TreeDisk.Pointer(j.childAddr) == EditLast(j.edit).node.slots[EditLast(j.edit).slot]
    && CachedNodeRead(k, s, j.childNba, j.childNode)
    && ChildEquivalentToSlotGroup(j.edit.replacementNode, EditLast(j.edit).slot, EditLast(j.edit).node, j.childAddr, j.childNode)
    && j.childNba' == Unused  // free the child reference
}

predicate WriteCore(k:Constants, s:Variables, s':Variables, lba:LBA, sector:Sector)
{
    && s.ready

    && TreeDisk.Write(k.disk, s.disk, s'.disk, lba, sector)
    && s'.cache == s.cache[lba := CacheLine(sector, Clean)]
    && s'.ephemeralTable == s.ephemeralTable
    && s'.ready == true
}

// It's always okay to write back cached sectors, whenever we feel like it,
// except: we can't write back the superblock pointer; that's a Commit.
predicate WriteBackAction(k:Constants, s:Variables, s':Variables, lba:LBA)
{
    && 1 <= lba < DiskSize(k)
    && lba in s.cache
    && WriteCore(k, s, s', lba, s.cache[lba].sector)
}

// Dirty a sector that stores the ephemeral table.
predicate EmitTableAction(k:Constants, s:Variables, s':Variables, persistentTi:TableIndex, super:Sector, tblSectorIdx:int)
{
    && s.ready
    && WFVariables(k, s)
    && KnowPersistentTableIndex(k, s, persistentTi, super)
    && var ephemeralTi := TreeDisk.OppositeTableIndex(persistentTi);
    && ValidTableSectorIndex(k, tblSectorIdx)
    && var lba := LbaForTableOffset(k, ephemeralTi, tblSectorIdx);
    // Actually, once we've constrained ti and ValidTableOffset, we've got an
    // lba in the ephemeral table region; we can write whatever we want there.
    // The next line is just good advice about what might help to write. :v) 
    && var sector := MarshallTable(k, s.ephemeralTable)[tblSectorIdx];
    
    && TreeDisk.Idle(k.disk, s.disk, s'.disk)
    && s'.cache == WriteSectorToCache(k, s'.cache, lba, sector)
    && s'.ephemeralTable == s.ephemeralTable
    && s'.ready == true
}

predicate CacheIsClean(cache:Cache)
{
    forall lba :: lba in cache ==> cache[lba].state.Clean?
}

// Once we've written enough sectors (both table and node), life is good! Flip
// the flag.
// TODO For this version, we'll be simple and just demand that every line of
// the cache be Clean.
predicate CommitAction(k:Constants, s:Variables, s':Variables, persistentTi:TableIndex, super:Sector)
{
    && s.ready
    && KnowPersistentTableIndex(k, s, persistentTi, super)
    && var ephemeralTi := TreeDisk.OppositeTableIndex(persistentTi);
    && var super := TreeDisk.Superblock(ephemeralTi);
    && CacheIsClean(s.cache)

    // Write the new superblock THROUGH the cache. Everything in the cache stays clean.
    && WriteCore(k, s, s', SUPERBLOCK_LBA(), super)
}

// TODO trusted code
predicate CrashAction(k:Constants, s:Variables, s':Variables)
{
    && s'.disk == s.disk
    && s'.cache.Keys == {}
    // s'.ephemeralTable is unconstrained.
    && s'.ready == false
}

// You can make an ephemeral table ready to write
predicate RecoverAction(k:Constants, s:Variables, s':Variables, super:Sector, persistentTl:TableLookup)
{
    && !s.ready
    && KnowPersistentTableIndex(k, s, persistentTl.ti, super)
    && TreeDisk.WFTableIndex(persistentTl.ti)
    && KnowTable(k, s, persistentTl)

    && TreeDisk.Idle(k.disk, s.disk, s'.disk)
    && s'.cache == s.cache
    // we need to know the whole persistent table: the root ensures the
    // ephemeral tree state matches; the rest of the entries avoid incorrectly
    // marking unused sectors as allocated.
    && s'.ephemeralTable == persistentTl.table
    && s'.ready == true
}

// Bring a sector into the cache
predicate CacheFaultAction(k:Constants, s:Variables, s':Variables, lba:LBA, sector:Sector)
{
    && TreeDisk.Read(k.disk, s.disk, s'.disk, lba, sector)
    && s'.cache == s.cache[lba := CacheLine(sector, Clean)]
    && s'.ephemeralTable == s.ephemeralTable
    && s'.ready == s.ready
}

// It's okay to evict entries from the cache whenever.
predicate CacheEvictAction(k:Constants, s:Variables, s':Variables, lba:LBA)
{
    && TreeDisk.Idle(k.disk, s.disk, s'.disk)
    && s'.cache == MapRemove(s.cache, lba)
    && s'.ephemeralTable == s.ephemeralTable
    && s'.ready == s.ready
}

predicate InitTable(table:Table, rootNba:NBA)
{
    && 0 < |table|
    && table[ROOT_ADDR()] == rootNba
    && (forall addr :: 0 <= addr < |table| && addr != ROOT_ADDR()
        ==> table[addr].Unused?)
}

function {:opaque} EmptyView() : (view:View)
    ensures view.Keys == {}
{
    map l:LBA | l in {} :: TreeDisk.TableSector
}


function {:opaque} ViewOfDiskDef(k:TreeDisk.Constants, s:TreeDisk.Variables, lbaLimit:LBA) : (view:View)
    requires 0 <= lbaLimit <= |s.sectors|
    ensures forall lba :: TreeDisk.ValidLBA(k, lba) && lba < lbaLimit ==> lba in view && view[lba] == s.sectors[lba]
    decreases lbaLimit
{
    if lbaLimit == 0
    then EmptyView()
    else ViewOfDiskDef(k, s, lbaLimit-1)[lbaLimit-1 := s.sectors[lbaLimit-1]]
}

function ViewOfDisk(k:TreeDisk.Constants, s:TreeDisk.Variables) : (view:View)
    requires TreeDisk.WF(k, s)
    ensures forall lba :: TreeDisk.ValidLBA(k, lba) ==> lba in view && view[lba] == s.sectors[lba]
{
    ViewOfDiskDef(k, s, k.size)
}

datatype Mkfs = Mkfs(super:Sector, tl:TableLookup)

predicate DiskInMkfsState(k:Constants, s:Variables, mkfs:Mkfs)
{
    // right-sized disk
    && TreeDisk.Init(k.disk, s.disk)
    && k.disk.size == DiskSize(k)
    && TreeDisk.WF(k.disk, s.disk)
    && 0 < k.tableEntries

    // Empty persistent table
    && TreeDisk.WFTableIndex(mkfs.tl.ti)
    && PersistentTableIndexInView(ViewOfDisk(k.disk, s.disk), mkfs.tl.ti, mkfs.super)
    && TableInView(k, ViewOfDisk(k.disk, s.disk), mkfs.tl)
    // I arbitrarily demand that the root block be stored in node data sector 0.
    && InitTable(mkfs.tl.table, Used(0))
    && s.disk.sectors[LbaForNba(k, Used(0))] == TreeDisk.NodeSector(TreeDisk.Node([], [TreeDisk.Empty]))
}

predicate Init(k:Constants, s:Variables)
{
    && (exists mkfs :: DiskInMkfsState(k, s, mkfs))
    && s.cache.Keys == {}
    // No constraint on ephemeralTable, because we'll use !s.ready to force a RecoveryAction.
    && s.ready == false // We'll simply RecoverAction the initial disk.
}

} // module
