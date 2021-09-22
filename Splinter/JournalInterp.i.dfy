// Copyright 2018-2021 VMware, Inc., Microsoft Inc., Carnegie Mellon University, ETH Zurich, and University of Washington
// SPDX-License-Identifier: BSD-2-Clause

include "SequenceSets.i.dfy"
include "Journal.i.dfy"
include "CacheLemmas.i.dfy"

// The Module that Interprets the Journal.
module JournalInterpMod {

  import opened ValueMessage
  import opened KeyType
  import opened Options
  import opened Sequences
  import opened Maps
  import opened MsgHistoryMod
  import MapSpecMod
  import opened DiskTypesMod
  import opened AllocationMod
  import opened JournalMachineMod
  import opened InterpMod
  import opened SequenceSetsMod
  import CacheLemmasMod

  predicate Invariant(v: Variables, cache: CacheIfc.Variables)
  {
    && v.WF()
    && v.marshalledLookup.ValidForSB(cache, v.CurrentSuperblock())
    && v.marshalledLookup.last().expectedEnd.None?  // consider rolling this into ValidForSB, which isn't used inductively -- I think?
  }

  // XXX was ChainAsMsgSeq now v.marshalledLookup.interp

  function SyncReqsAt(v: Variables, lsn: LSN) : set<CrashTolerantMapSpecMod.SyncReqId>
    //requires v.persistentLSN <= lsn < v.unmarshalledLSN()
    //requires v.WF()
  {
    //set syncReqId | v.syncReqs[syncReqId] == lsn //&& (syncReqId in nat)
    set lsns |  v.persistentLSN <= lsns <= lsn
  }

  function UnmarshalledMessageSeq(v: Variables, cache:CacheIfc.Variables) : MsgSeq
    requires v.WF()
  {
    v.marshalledLookup.interp().Concat(TailToMsgSeq(v))
  }

  function InterpFor(v: Variables, cache:CacheIfc.Variables, base: InterpMod.Interp, lsn: LSN) : Interp
    requires v.WF()
    requires Invariant(v, cache)
    requires base.seqEnd == v.boundaryLSN
    requires v.boundaryLSN <= lsn < v.unmarshalledLSN()
  {
    UnmarshalledMessageSeq(v, cache).Truncate(lsn).ApplyToInterp(base)
  }

   function VersionFor(v: Variables, cache:CacheIfc.Variables, base: InterpMod.Interp, lsn: LSN) : CrashTolerantMapSpecMod.Version
     requires v.WF()
     requires Invariant(v, cache)
     requires base.seqEnd == v.boundaryLSN
     requires v.boundaryLSN <= lsn < v.unmarshalledLSN() // we only need versions for the journal for the unapplied suffix of entries
   {
     // TODO No accounting for v.syncReqs < boundaryLSN; hrmm.
     var mapspec := MapSpecMod.Variables(InterpFor(v, cache, base, lsn));
     var asyncmapspec := CrashTolerantMapSpecMod.async.Variables(mapspec, {}, {});
     CrashTolerantMapSpecMod.Version(asyncmapspec, SyncReqsAt(v, lsn))
   }

  function Versions(v: Variables, cache:CacheIfc.Variables, base: InterpMod.Interp) : seq<CrashTolerantMapSpecMod.Version>
    requires v.WF()
    requires base.seqEnd == v.boundaryLSN // Can we require this here?
    requires Invariant(v, cache)
   {
     // TODO: check
     var numVersions := v.unmarshalledLSN() - v.boundaryLSN;
     seq(numVersions, i requires 0 <= i < numVersions =>
        var lsn := i + v.boundaryLSN;
        assert v.boundaryLSN <= lsn;
        assert lsn < v.unmarshalledLSN();
        VersionFor(v, cache, base, lsn)
     )
   }

   // TDODO: may have to lemma for the journal internal step

  function IMNotRunning(cache: CacheIfc.Variables, sb: Superblock, base: InterpMod.Interp) : CrashTolerantMapSpecMod.Variables
    requires base.seqEnd == sb.boundaryLSN  // This crash-invariant condition should probably not be a requires; just return nonsense if it fails.
  {
    assume false; // this is all nonsense
    var pretendVariables := Variables(sb.boundaryLSN, sb.boundaryLSN, sb.boundaryLSN, sb.boundaryLSN, [], map[], EmptyChainLookup(Superblock(None, 0), None));
    var versions := Versions(pretendVariables, cache, base);
    CrashTolerantMapSpecMod.Variables(versions, 0) // TODO Sowmya pick up here
  }

  function IM(v: Variables, cache:CacheIfc.Variables, base: InterpMod.Interp)
    : CrashTolerantMapSpecMod.Variables
    requires v.WF()
    requires Invariant(v, cache)
    requires base.seqEnd == v.boundaryLSN
  {
    assert v.boundaryLSN <= v.unmarshalledLSN(); // Follows from WF & defn unmarshalledLSN
    var versions := Versions(v, cache, base);
    CrashTolerantMapSpecMod.Variables(versions, 0)
  }

  // TODO(jonh): Try porting this from recursive style to Travis' suggested
  // repr-state style (see ReprsAsSets.i.dfy).
  function IReads(cache:CacheIfc.Variables, sb: Superblock) : seq<CU>
  {
    ChainFrom(cache, sb).last().cumulativeReadCUs
  }

  lemma CuInIReads(cl: ChainLookup, idx: nat)
    requires 0 <= idx < |cl.rows|
    requires cl.rows[idx].sb.freshestCU.Some?
    ensures cl.rows[idx].sb.freshestCU.value in cl.last().cumulativeReadCUs
  {
  }
  
  // This lemma dominates UniqueChainLookup.
  lemma FrameOneChainInductive(cache0: CacheIfc.Variables, cache1: CacheIfc.Variables, sb: Superblock, cl0: ChainLookup, cl1: ChainLookup)
    requires cl0.ValidForSB(cache0, sb)
    requires cl1.ValidForSB(cache1, sb)
    requires DiskViewsEquivalentForSeq(cache0.dv, cache1.dv, cl0.last().cumulativeReadCUs)
    requires cl0.last().expectedEnd == cl1.last().expectedEnd
    ensures cl0 == cl1
    decreases |cl0.rows|
  {
    assert cl0.Linked(|cl0.rows|-1);  // trigger
    assert cl0.Linked(|cl0.rows|-1);  // trigger

    if sb.freshestCU.Some? {
      assert sb.freshestCU.value in cl0.last().cumulativeReadCUs; // observe trigger
    }
    assert cl1.Linked(|cl1.rows| - 1);  // observe trigger -- lets us conclude cl1 has ==1 or >1 rows based on FirstRow() properties.

    if 1 < |cl0.rows| {
      ValidPrior(cache0, cl0);
      assert sb.freshestCU.value in cl0.last().cumulativeReadCUs; // observe trigger
      ValidPrior(cache1, cl1);
      var priorSB := cl0.rows[|cl0.rows|-2].sb;
      assert cl1.DropLast().ValidForSB(cache1, priorSB);  // trigger

//      assert cl0.DropLast().last().cumulativeReadCUs <= cl0.last().cumulativeReadCUs; // observe trigger
      FrameOneChainInductive(cache0, cache1, priorSB, cl0.DropLast(), cl1.DropLast()); // recurse
    }
  }

  lemma FrameOneChain(cache0: CacheIfc.Variables, cache1: CacheIfc.Variables, sb: Superblock)
    requires DiskViewsEquivalentForSeq(cache0.dv, cache1.dv, IReads(cache0, sb))
    ensures ChainFrom(cache0, sb) == ChainFrom(cache1, sb)
  {
    var cl0 := ChainFrom(cache0, sb);
    var cl1 := ChainFrom(cache1, sb);
    FrameOneChainInductive(cache0, cache1, sb, cl0, cl1);
    UniqueChainLookup(cache0, cl0, cl1);
  }

  // Add comment about what this supposed to do the TODOS here
  lemma InternalStepLemma(v: Variables, cache: CacheIfc.Variables, v': Variables, cache': CacheIfc.Variables,  sb:Superblock, base: InterpMod.Interp, cacheOps: CacheIfc.Ops, sk: Skolem)
    requires DiskViewsEquivalentForSeq(cache.dv, cache'.dv, IReads(cache, sb))
    requires v.WF()
    requires base.seqEnd == v.boundaryLSN
    requires Invariant(v, cache)
    requires Invariant(v', cache')
    requires v.boundaryLSN < v.unmarshalledLSN()
    requires Internal(v, v', cache, cacheOps, sk);
    requires CacheIfc.WritesApplied(cache, cache', cacheOps)
    ensures v.boundaryLSN == v'.boundaryLSN
    ensures v.unmarshalledLSN() == v'.unmarshalledLSN()
    ensures IM(v, cache, base) == IM(v', cache', base)
  {
    assert v.boundaryLSN == v'.boundaryLSN;
    assert v.unmarshalledLSN() == v'.unmarshalledLSN();
    forall lsn | v.boundaryLSN <= lsn < v.unmarshalledLSN()
      ensures InterpFor(v, cache, base, lsn) == InterpFor(v', cache', base, lsn)
    {
      match sk {
        case AdvanceMarshalledStep(newCU) => {
          assert CacheIfc.WritesApplied(cache, cache', cacheOps);
          calc {
            UnmarshalledMessageSeq(v, cache);
            v.marshalledLookup.interp().Concat(TailToMsgSeq(v));
              { UniqueChainLookup(cache, v.marshalledLookup, ChainFrom(cache, v.marshalledLookup.last().sb)); }  // Use invariant
            ChainFrom(cache, v.marshalledLookup.last().sb).interp().Concat(TailToMsgSeq(v));
            ChainFrom(cache', Superblock(Some(newCU), v.boundaryLSN)).interp();
            ChainFrom(cache', Superblock(Some(newCU), v.boundaryLSN)).interp().Concat(TailToMsgSeq(v'));
            v'.marshalledLookup.interp().Concat(TailToMsgSeq(v'));
            UnmarshalledMessageSeq(v', cache');
          }

//          assert ChainFrom(cache'.dv, v'.CurrentSuperblock()).chain.Some?;
//          var sb := v.CurrentSuperblock();
//          var sb' := v'.CurrentSuperblock();
//          var orig_chain_msgseq := ChainFrom(cache.dv, sb).chain.value.interp;
//          var orig_tail_msgseq := TailToMsgSeq(v);
//          var new_chain_msgseq := ChainFrom(cache'.dv, sb').chain.value.interp;
//          var new_tail_msgseq := TailToMsgSeq(v');
//
//          var priorCU := if v.marshalledLSN == v.boundaryLSN then None else Some(v.lsnToCU[v.marshalledLSN-1]);
//          var jr := JournalRecord(TailToMsgSeq(v), priorCU);
//          var sb_old := jr.priorSB(sb');
//          assert sb_old == sb;
//
//          assert newCU !in IReads(cache, sb);
//          assert DiskViewsEquivalentForSeq(cache.dv, cache'.dv, IReads(cache, sb));
//          FrameOneChain(cache, cache', sb);
////          assert ChainFrom(cache.dv, sb).chain == ChainFrom(cache'.dv, sb).chain; // ensures
//          assert ChainFrom(cache'.dv, sb) == ChainFrom(cache.dv, sb);
//          if ChainFrom(cache'.dv, sb).chain.None? {
//            assert ChainFrom(cache'.dv, sb').chain.None?;
//          } else {
//	          calc {
//	            ChainFrom(cache'.dv, sb').chain.value.recs;
//	              {
//	                assert sb'.freshestCU.Some?;
//	                assert sb'.freshestCU.value in cache'.dv;
//	                assert parse(cache'.dv[sb'.freshestCU.value]).Some?;
//	                assert v'.marshalledLSN == v.unmarshalledLSN();
//	
//	                var cr := ChainFrom(cache'.dv, sb');
//	                assert cr.chain.Some?;
//	                var marshalledLsn := v'.marshalledLSN - 1;
//	                var idx := cr.chain.value.locate[marshalledLsn];
//	
//	                calc {
//	                  v'.FreshestMarshalledCU();
//	                  Some(v'.lsnToCU[v'.marshalledLSN-1]);
//	                  Some(CUForChainIdx(cr.chain.value, idx));
//	                  Some(newCU);
//	                }
//	                assert sb'.freshestCU == Some(newCU);
//	                assert sb'.boundaryLSN == v.boundaryLSN;
//	                assert sb' == Superblock(Some(newCU), v.boundaryLSN);
//	                assert MappingFor(cache, sb') == v'.lsnToCU;
//	                assert v'.lsnToCU[marshalledLsn] == CUForChainIdx(cr.chain.value, idx);
//	                assert v'.lsnToCU[marshalledLsn] == newCU;
//	                assert v'.lsnToCU[v'.marshalledLSN - 1] == newCU; // CorrectMapping isn't defined
//	                assert newCU == v'.FreshestMarshalledCU().value;
//	                assert sb'.freshestCU.value == newCU;
//	                assert jr == parse(cache'.dv[sb'.freshestCU.value]).value;  // CorrectMapping isn't defined.
//	                assert !(jr.messageSeq.seqEnd <= sb'.boundaryLSN);
//	                assert !(jr.messageSeq.seqStart <= sb.boundaryLSN);
//	                assert !(jr.priorCU.None?);
//	              }
//	            [jr] + ChainFrom(MapRemove1(cache'.dv, sb'.freshestCU.value), jr.priorSB(sb')).chain.value.recs;
//	            [jr] + ChainFrom(MapRemove1(cache'.dv, sb'.freshestCU.value), sb).chain.value.recs;
//	            [jr] + ChainFrom(cache.dv, sb).chain.value.recs;
//	              // Framing argument here
//	            [jr] + ChainFrom(cache.dv, sb).chain.value.recs;
//	          }
//	          calc {
//	            ChainAsMsgSeq(v', cache');
//	            ChainFrom(cache'.dv, sb').chain.value.interp.Concat(TailToMsgSeq(v'));
//	            new_chain_msgseq.Concat(new_tail_msgseq);
//	            new_chain_msgseq;
//	            orig_chain_msgseq.Concat(orig_tail_msgseq);
//	            ChainFrom(cache.dv, sb).chain.value.interp.Concat(TailToMsgSeq(v));
//	            ChainAsMsgSeq(v, cache);
//	          }
//	          assume false; // this is the slightly harder case, because the chain actually changes.
//	          assert ChainAsMsgSeq(v, cache) == ChainAsMsgSeq(v', cache');
//          }
        }
        case AdvanceCleanStep(newClean) => {
//          assert cacheOps == [];
//          CacheLemmasMod.EquivalentCaches(cache, cache', cacheOps);
//          assert ChainAsMsgSeq(v, cache) == ChainAsMsgSeq(v', cache');
        }
      }
//      assert ChainAsMsgSeq(v, cache) == ChainAsMsgSeq(v', cache');
    }
    assert IM(v, cache, base) == IM(v', cache', base);
  }

  lemma Framing(v: Variables, cache0: CacheIfc.Variables, cache1: CacheIfc.Variables, base: InterpMod.Interp)
    requires v.WF()
    requires DiskViewsEquivalentForSeq(cache0.dv, cache1.dv, IReads(cache0, v.CurrentSuperblock()))
    requires base.seqEnd == v.boundaryLSN

    // QUESTION: We need to require these right?, Need to figure this out for later
    requires Invariant(v, cache0)
    requires Invariant(v, cache1)
    requires base.seqEnd == v.persistentLSN
    requires v.persistentLSN < v.unmarshalledLSN()
    ensures IM(v, cache0, base) == IM(v, cache1, base)
  {
//    assume false; // there's a timeout here that seems to point at opaque WFChainInner. That's weird.
    FrameOneChain(cache0, cache1, v.CurrentSuperblock());
    // This works --- I'm suspicious -- Sowmya
    calc {
      IM(v, cache0, base);
      IM(v, cache1, base);
    }
  }
}
