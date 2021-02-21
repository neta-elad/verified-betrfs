include "BookkeepingModel.i.dfy"
include "IOModel.i.dfy"
include "DeallocModel.i.dfy"
include "../lib/Base/Option.s.dfy"
include "../lib/Base/Sets.i.dfy"

// See dependency graph in MainHandlers.dfy

module SyncModel { 
  import opened IOModel
  import opened BookkeepingModel
  import opened DiskOpModel
  import opened Bounds
  import opened ViewOp
  import opened InterpretationDiskOps
  import opened DiskLayout

  import opened Options
  import opened Maps
  import opened Sequences
  import opened Sets

  import opened BucketsLib

  import opened NativeTypes

  import opened StateSectorModel

  function {:opaque} AssignIdRefLocOutstanding(s: BCVariables, id: D.ReqId, ref: BT.G.Reference, loc: Location) : (s' : BCVariables)
  requires s.Ready?
  requires BlockAllocatorModel.Inv(s.blockAllocator)
  requires 0 <= loc.addr as int / NodeBlockSize() < NumBlocks()
  {
    var blockAllocator0 := if id in s.outstandingBlockWrites && s.outstandingBlockWrites[id].loc.addr as int / NodeBlockSize() < NumBlocks() then
      // This case shouldn't actually occur but it's annoying to prove from this point.
      // So I just chose to handle it instead.
      // Yeah, it's kind of annoying.
      BlockAllocatorModel.MarkFreeOutstanding(s.blockAllocator, s.outstandingBlockWrites[id].loc.addr as int / NodeBlockSize())
    else
      s.blockAllocator;

    var outstandingBlockWrites' := s.outstandingBlockWrites[id := BC.OutstandingWrite(ref, loc)];

    var blockAllocator' := BlockAllocatorModel.MarkUsedOutstanding(blockAllocator0, loc.addr as int / NodeBlockSize());

    s
      .(outstandingBlockWrites := outstandingBlockWrites')
      .(blockAllocator := blockAllocator')
  }

  lemma LemmaAssignIdRefLocOutstandingCorrect(s: BCVariables, id: D.ReqId, ref: BT.G.Reference, loc: Location)
  requires s.Ready?
  requires (forall i: int :: IsLocAllocOutstanding(s.outstandingBlockWrites, i)
          <==> StateSectorModel.IndirectionTable.IsLocAllocBitmap(s.blockAllocator.outstanding, i))
  requires BlockAllocatorModel.Inv(s.blockAllocator)
  requires ValidNodeLocation(loc);
  requires 0 <= loc.addr as int / NodeBlockSize() < NumBlocks()
  requires BC.AllOutstandingBlockWritesDontOverlap(s.outstandingBlockWrites)
  requires BC.OutstandingWriteValidNodeLocation(s.outstandingBlockWrites)
  ensures var s' := AssignIdRefLocOutstanding(s, id, ref, loc);
      && s'.Ready?
      && (forall i: int :: IsLocAllocOutstanding(s'.outstandingBlockWrites, i)
          <==> StateSectorModel.IndirectionTable.IsLocAllocBitmap(s'.blockAllocator.outstanding, i))
      && BlockAllocatorModel.Inv(s'.blockAllocator)
  {
    reveal_AssignIdRefLocOutstanding();
    BitmapModel.reveal_BitUnset();
    BitmapModel.reveal_BitSet();
    BitmapModel.reveal_IsSet();

    var s' := AssignIdRefLocOutstanding(s, id, ref, loc);

    var j := loc.addr as int / NodeBlockSize();
    reveal_ValidNodeAddr();
    assert j != 0;
    assert j * NodeBlockSize() == loc.addr as int;

    forall i: int
    | IsLocAllocOutstanding(s'.outstandingBlockWrites, i)
    ensures StateSectorModel.IndirectionTable.IsLocAllocBitmap(s'.blockAllocator.outstanding, i)
    {
      if id in s.outstandingBlockWrites && s.outstandingBlockWrites[id].loc.addr as int / NodeBlockSize() < NumBlocks() && i == s.outstandingBlockWrites[id].loc.addr as int / NodeBlockSize() {
        if i == j {
          assert StateSectorModel.IndirectionTable.IsLocAllocBitmap(s'.blockAllocator.outstanding, i);
        } else {
          var id0 :| id0 in s'.outstandingBlockWrites && s'.outstandingBlockWrites[id0].loc.addr as int == i * NodeBlockSize() as int;
          assert ValidNodeAddr(s.outstandingBlockWrites[id0].loc.addr);
          assert ValidNodeAddr(s.outstandingBlockWrites[id].loc.addr);
          assert s.outstandingBlockWrites[id0].loc.addr as int
              == i * NodeBlockSize() as int
              == s.outstandingBlockWrites[id].loc.addr as int;
          assert id == id0;
          assert false;
        }
      } else if i != j {
        assert IsLocAllocOutstanding(s.outstandingBlockWrites, i);
        assert StateSectorModel.IndirectionTable.IsLocAllocBitmap(s.blockAllocator.outstanding, i);
        assert StateSectorModel.IndirectionTable.IsLocAllocBitmap(s'.blockAllocator.outstanding, i);
      } else {
        assert StateSectorModel.IndirectionTable.IsLocAllocBitmap(s'.blockAllocator.outstanding, i);
      }
    }

    forall i: int
    | StateSectorModel.IndirectionTable.IsLocAllocBitmap(s'.blockAllocator.outstanding, i)
    ensures IsLocAllocOutstanding(s'.outstandingBlockWrites, i)
    {
      if i != j {
        assert StateSectorModel.IndirectionTable.IsLocAllocBitmap(s.blockAllocator.outstanding, i);
        assert IsLocAllocOutstanding(s.outstandingBlockWrites, i);
        var id0 :| id0 in s.outstandingBlockWrites
          && s.outstandingBlockWrites[id0].loc.addr as int == i * NodeBlockSize() as int;
        assert id0 != id;
        assert id0 in s'.outstandingBlockWrites;
        assert s'.outstandingBlockWrites[id0].loc.addr as int == i * NodeBlockSize() as int;
        assert IsLocAllocOutstanding(s'.outstandingBlockWrites, i);
      } else {
        assert id in s'.outstandingBlockWrites;
        assert s'.outstandingBlockWrites[id].loc.addr as int == i * NodeBlockSize() as int;
        assert IsLocAllocOutstanding(s'.outstandingBlockWrites, i);
      }
    }
  }

  function {:fuel BC.GraphClosed,0} {:fuel BC.CacheConsistentWithSuccessors,0}
  maybeFreeze(s: BCVariables, io: IO)
  : (res: (BCVariables, IO, bool))
  requires io.IOInit?
  requires BCInv(s)
  requires s.Ready?
  requires s.outstandingIndirectionTableWrite.None?
  requires s.frozenIndirectionTable.None?
  {
    var foundDeallocable := FindDeallocable(s);
    FindDeallocableCorrect(s);

    if foundDeallocable.Some? then (
      var (s', io') := Dealloc(s, io, foundDeallocable.value);
      (s', io', false)
    ) else (
      var s' := s
          .(frozenIndirectionTable := Some(s.ephemeralIndirectionTable.clone()))
          .(blockAllocator := BlockAllocatorModel.CopyEphemeralToFrozen(s.blockAllocator));
      (s', io, true)
    )
  }

  lemma {:fuel BC.GraphClosed,0} {:fuel BC.CacheConsistentWithSuccessors,0}
  maybeFreezeCorrect(s: BCVariables, io: IO)
  requires io.IOInit?
  requires BCInv(s)
  requires s.Ready?
  requires s.outstandingIndirectionTableWrite.None?
  requires s.frozenIndirectionTable.None?

  ensures var (s', io', froze) := maybeFreeze(s, io);
    && WFBCVars(s')
    && ValidDiskOp(diskOp(io'))
    && IDiskOp(diskOp(io')).jdop.NoDiskOp?
    && (froze ==> BBC.Next(IBlockCache(s), IBlockCache(s'), IDiskOp(diskOp(io')).bdop, FreezeOp))
    && (!froze ==>
      || BBC.Next(IBlockCache(s), IBlockCache(s'), IDiskOp(diskOp(io')).bdop, StatesInternalOp)
      || BBC.Next(IBlockCache(s), IBlockCache(s'), IDiskOp(diskOp(io')).bdop, AdvanceOp(UI.NoOp, true))
    )
  {
    var (s', io', froze) := maybeFreeze(s, io);

    var foundDeallocable := FindDeallocable(s);
    FindDeallocableCorrect(s);

    if foundDeallocable.Some? {
      DeallocCorrect(s, io, foundDeallocable.value);
      return;
    }

    reveal_ConsistentBitmap();
    assert WFBCVars(s');

    assert BC.Freeze(IBlockCache(s), IBlockCache(s'), IDiskOp(diskOp(io')).bdop, FreezeOp);
    assert BBC.BlockCacheMove(IBlockCache(s), IBlockCache(s'), IDiskOp(diskOp(io')).bdop, FreezeOp, BC.FreezeStep);
    assert stepsBC(IBlockCache(s), IBlockCache(s'), FreezeOp, io, BC.FreezeStep);
    return;
  }

  predicate WriteBlockUpdateState(s: BCVariables, ref: BT.G.Reference,
      id: Option<D.ReqId>, loc: Option<Location>, s': BCVariables)
  requires s.Ready?
  requires BCInv(s)
  requires loc.Some? ==> 0 <= loc.value.addr as int / NodeBlockSize() < NumBlocks()
  requires ref in s.cache
  {
    reveal_ConsistentBitmap();

    if id.Some? then (
      && loc.Some?
      && var s0 := AssignRefToLocEphemeral(s, ref, loc.value);
      && var s1 := AssignRefToLocFrozen(s0, ref, loc.value);
      && s' == AssignIdRefLocOutstanding(s1, id.value, ref, loc.value)
    ) else (
      && s' == s
    )
  }

  predicate TryToWriteBlock(s: BCVariables, io: IO, ref: BT.G.Reference,
      s': BCVariables, io': IO)
  requires s.Ready?
  requires BCInv(s)
  requires io.IOInit?
  requires ref in s.cache
  {
    exists id, loc ::
      && FindLocationAndRequestWrite(io, s, SectorNode(s.cache[ref]), id, loc, io')
      && WriteBlockUpdateState(s, ref, id, loc, s')
  }

  lemma TryToWriteBlockCorrect(s: BCVariables, io: IO, ref: BT.G.Reference,
      s': BCVariables, io': IO)
  requires io.IOInit?
  requires TryToWriteBlock.requires(s, io, ref, s', io')
  requires TryToWriteBlock(s, io, ref, s', io')
  requires s.outstandingIndirectionTableWrite.None?
  ensures WFBCVars(s')
  ensures ValidDiskOp(diskOp(io'))
  ensures IDiskOp(diskOp(io')).jdop.NoDiskOp?
  ensures BBC.Next(IBlockCache(s), IBlockCache(s'), IDiskOp(diskOp(io')).bdop, StatesInternalOp)
  {
    var id, loc :| 
      && FindLocationAndRequestWrite(io, s, SectorNode(s.cache[ref]), id, loc, io')
      && WriteBlockUpdateState(s, ref, id, loc, s');

    FindLocationAndRequestWriteCorrect(io, s, SectorNode(s.cache[ref]), id, loc, io');

    if id.Some? {
      reveal_ConsistentBitmap();
      reveal_AssignRefToLocEphemeral();
      reveal_AssignRefToLocFrozen();
      reveal_AssignIdRefLocOutstanding();

      var s0 := AssignRefToLocEphemeral(s, ref, loc.value);
      var s1 := AssignRefToLocFrozen(s0, ref, loc.value);

      LemmaAssignRefToLocEphemeralCorrect(s, ref, loc.value);
      LemmaAssignRefToLocFrozenCorrect(s0, ref, loc.value);
      LemmaAssignIdRefLocOutstandingCorrect(s1, id.value, ref, loc.value);
      
      if s.frozenIndirectionTable.Some? {
        assert s'.frozenIndirectionTable.value.I()
          == BC.assignRefToLocation(s.frozenIndirectionTable.value.I(), ref, loc.value);
      }

      assert ValidNodeLocation(IDiskOp(diskOp(io')).bdop.reqWriteNode.loc);
      assert BC.WriteBackNodeReq(IBlockCache(s), IBlockCache(s'), IDiskOp(diskOp(io')).bdop, StatesInternalOp, ref);
      assert stepsBC(IBlockCache(s), IBlockCache(s'), StatesInternalOp, io', BC.WriteBackNodeReqStep(ref));
    } else {
      assert io == io';
      assert noop(IBlockCache(s), IBlockCache(s));
    }
  }

  predicate {:fuel BC.GraphClosed,0} syncFoundInFrozen(s: BCVariables, io: IO, ref: Reference,
      s': BCVariables, io': IO)
  requires io.IOInit?
  requires BCInv(s)
  requires s.Ready?
  requires s.outstandingIndirectionTableWrite.None?
  requires s.frozenIndirectionTable.Some?
  requires ref in s.frozenIndirectionTable.value.graph
  requires ref !in s.frozenIndirectionTable.value.locs
  {
    assert ref in s.frozenIndirectionTable.value.I().graph;
    assert ref !in s.frozenIndirectionTable.value.I().locs;

    if ref in s.ephemeralIndirectionTable.locs then (
      // TODO we should be able to prove this is impossible as well
      && s' == s
      && io' == io
    ) else (
      TryToWriteBlock(s, io, ref, s', io')
    )
  }

  lemma {:fuel BC.GraphClosed,0} syncFoundInFrozenCorrect(s: BCVariables, io: IO, ref: Reference,
      s': BCVariables, io': IO)
  requires io.IOInit?
  requires BCInv(s)
  requires s.Ready?
  requires s.outstandingIndirectionTableWrite.None?
  requires s.frozenIndirectionTable.Some?
  requires ref in s.frozenIndirectionTable.value.graph
  requires ref !in s.frozenIndirectionTable.value.locs

  requires syncFoundInFrozen(s, io, ref, s', io')

  ensures WFBCVars(s')
  ensures ValidDiskOp(diskOp(io'))
  ensures IDiskOp(diskOp(io')).jdop.NoDiskOp?
  ensures BBC.Next(IBlockCache(s), IBlockCache(s'), IDiskOp(diskOp(io')).bdop, StatesInternalOp)
  {
    assert ref in s.frozenIndirectionTable.value.I().graph;
    assert ref !in s.frozenIndirectionTable.value.I().locs;

    if ref in s.ephemeralIndirectionTable.locs {
      assert ref in s.ephemeralIndirectionTable.I().locs;
      assert noop(IBlockCache(s), IBlockCache(s));
    } else {
      TryToWriteBlockCorrect(s, io, ref, s', io');
    }
  }

  predicate {:opaque} {:fuel BC.GraphClosed,0} sync(s: BCVariables, io: IO,
      s': BCVariables, io': IO, froze: bool)
  requires io.IOInit?
  requires BCInv(s)
  requires s.Ready?
  {
    if s.frozenIndirectionTableLoc.Some? then (
      && s' == s
      && io' == io
      && froze == false
    ) else (
      // Plan:
      // - If the indirection table is not frozen then:
      //    - If anything can be unalloc'ed, do it
      // - Otherwise:
      //    - If any block in the frozen table doesn't have an LBA, Write it to disk
      //    - Write the frozenIndirectionTable to disk

      if (s.frozenIndirectionTable.None?) then (
        (s', io', froze) == maybeFreeze(s, io)
      ) else (
        var (frozen0, ref) := s.frozenIndirectionTable.value.findRefWithNoLoc();
        var s0 := s.(frozenIndirectionTable := Some(frozen0));
        assert BCInv(s0) by { reveal_ConsistentBitmap(); }
        if ref.Some? then (
          syncFoundInFrozen(s0, io, ref.value, s', io')
          && froze == false
        ) else if (s0.outstandingBlockWrites != map[]) then (
          && s' == s0
          && io' == io
          && froze == false
        ) else (
          if (diskOp(io').ReqWriteOp?) then (
            && s'.Ready?
            && var id := Some(diskOp(io').id);
            && var loc := s'.frozenIndirectionTableLoc;
            && FindIndirectionTableLocationAndRequestWrite(
                io, s0, SectorIndirectionTable(s0.frozenIndirectionTable.value),
                id, loc, io')
            && loc.Some?
            && s' ==
                s0.(outstandingIndirectionTableWrite := id)
                  .(frozenIndirectionTableLoc := loc)
            && froze == false
          ) else (
            && s' == s0
            && io' == io
            && froze == false
          )
        )
      )
    )
  }

  lemma {:fuel BC.GraphClosed,0} syncCorrect(s: BCVariables, io: IO,
      s': BCVariables, io': IO, froze: bool)
  requires io.IOInit?
  requires BCInv(s)
  requires s.Ready?

  requires sync(s, io, s', io', froze)

  ensures WFBCVars(s')
  ensures ValidDiskOp(diskOp(io'))
  ensures IDiskOp(diskOp(io')).jdop.NoDiskOp?

  ensures (froze ==> BBC.Next(IBlockCache(s), IBlockCache(s'), IDiskOp(diskOp(io')).bdop, FreezeOp))
  ensures (!froze ==>
    || BBC.Next(IBlockCache(s), IBlockCache(s'), IDiskOp(diskOp(io')).bdop, StatesInternalOp))
    || BBC.Next(IBlockCache(s), IBlockCache(s'), IDiskOp(diskOp(io')).bdop, AdvanceOp(UI.NoOp, true))

  ensures froze ==> s.frozenIndirectionTable.None?
  {
    reveal_sync();
    if s.frozenIndirectionTableLoc.Some? {
      assert noop(IBlockCache(s), IBlockCache(s));
    } else {
      if (s.frozenIndirectionTable.None?) {
        maybeFreezeCorrect(s, io);
      } else {
        var (frozen0, ref) := s.frozenIndirectionTable.value.findRefWithNoLoc();
        var s0 := s.(frozenIndirectionTable := Some(frozen0));
        assert BCInv(s0) by { reveal_ConsistentBitmap(); }
        if ref.Some? {
          syncFoundInFrozenCorrect(s0, io, ref.value, s', io');
        } else if (s0.outstandingBlockWrites != map[]) {
          assert noop(IBlockCache(s), IBlockCache(s0));
        } else {
          if (diskOp(io').ReqWriteOp?) {
            var id := Some(diskOp(io').id);
            var loc := s'.frozenIndirectionTableLoc;
            FindIndirectionTableLocationAndRequestWriteCorrect(
                io, s0, SectorIndirectionTable(s0.frozenIndirectionTable.value),
                id, loc, io');
            assert BC.WriteBackIndirectionTableReq(IBlockCache(s), IBlockCache(s'), IDiskOp(diskOp(io')).bdop, StatesInternalOp);
            assert stepsBC(IBlockCache(s), IBlockCache(s'), StatesInternalOp, io', BC.WriteBackIndirectionTableReqStep);
          } else {
            assert noop(IBlockCache(s), IBlockCache(s));
          }
        }
      }
    }
  }
}
