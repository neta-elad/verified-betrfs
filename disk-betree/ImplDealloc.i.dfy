include "ImplCache.i.dfy"
include "ImplModelDealloc.i.dfy"

module ImplDealloc { 
  import opened Impl
  import opened ImplIO
  import opened ImplCache
  import ImplModelDealloc
  import opened ImplState

  import opened Options
  import opened Maps
  import opened Sequences
  import opened Sets

  import LruModel

  import opened NativeTypes

  method Deallocable(s: ImplVariables, ref: BT.G.Reference) returns (result: bool)
  requires s.W()
  requires s.ready ==> s.ephemeralIndirectionTable.Inv()
  ensures result == ImplModelDealloc.deallocable(s.I(), ref)
  {
    if ref == BT.G.Root() {
      return false;
    }
    assert ref != BT.G.Root();
    if !s.ready {
      return false;
    }
    assert s.ready;
    var lbaGraph := s.ephemeralIndirectionTable.Get(ref);
    if !lbaGraph.Some? {
      return false;
    }
    assert ref in IM.IIndirectionTable(IIndirectionTable(s.ephemeralIndirectionTable)).graph;
    var table := s.ephemeralIndirectionTable.ToMap();
    var graph := map k | k in table :: table[k].1;
    assert graph == IM.IIndirectionTable(IIndirectionTable(s.ephemeralIndirectionTable)).graph;
    result := forall r | r in graph :: ref !in graph[r];
  }

  method Dealloc(k: ImplConstants, s: ImplVariables, io: DiskIOHandler, ref: BT.G.Reference)
  requires Inv(k, s)
  requires io.initialized()
  requires ImplModelDealloc.deallocable(s.I(), ref)
  requires io !in s.Repr()
  modifies io
  modifies s.Repr()
  ensures WellUpdated(s)
  ensures s.ready
  ensures (s.I(), IIO(io)) == ImplModelDealloc.Dealloc(Ic(k), old(s.I()), old(IIO(io)), ref);
  {
    ImplModelDealloc.reveal_Dealloc();

    if s.frozenIndirectionTable != null {
      var lbaGraph := s.frozenIndirectionTable.Get(ref);
      if lbaGraph.Some? {
        var (lba, _) := lbaGraph.value;
        if lba.None? {
          print "giving up; dealloc can't dealloc because frozen isn't written\n";
          return;
        }
      }
    }

    if !BC.OutstandingBlockReadsDoesNotHaveRef(s.outstandingBlockReads, ref) {
      print "giving up; dealloc can't dealloc because of outstanding read\n";
      return;
    }

    var _ := s.ephemeralIndirectionTable.Remove(ref);

    s.lru.Remove(ref);

    var _ := s.cache.Remove(ref);

    assume s.ephemeralIndirectionTable.Contents
        == MapRemove(old(s.ephemeralIndirectionTable.Contents), {ref});
    assume s.cache.Contents
        == MapRemove(old(s.cache.Contents), {ref});
  }

  method FindDeallocable(s: ImplVariables) returns (ref: Option<Reference>)
  requires s.WF()
  requires s.ready
  ensures ref == ImplModelDealloc.FindDeallocable(s.I())
  {
    ImplModelDealloc.reveal_FindDeallocable();

    // TODO once we have an lba freelist, rewrite this to avoid extracting a `map` from `s.ephemeralIndirectionTable`
    var ephemeralTable := s.ephemeralIndirectionTable.ToMap();
    var ephemeralRefs := SetToSeq(ephemeralTable.Keys);

    assume |ephemeralRefs| < 0x1_0000_0000_0000_0000;

    var i: uint64 := 0;
    while i as int < |ephemeralRefs|
    invariant 0 <= i as int <= |ephemeralRefs|
    invariant ImplModelDealloc.FindDeallocableIterate(s.I(), ephemeralRefs, i)
           == ImplModelDealloc.FindDeallocable(s.I())
    {
      var ref := ephemeralRefs[i];
      var isDeallocable := Deallocable(s, ref);
      if isDeallocable {
        return Some(ref);
      }
      i := i + 1;
    }
    return None;
  }
}
