// Copyright 2018-2021 VMware, Inc., Microsoft Inc., Carnegie Mellon University, ETH Zurich, and University of Washington
// SPDX-License-Identifier: BSD-2-Clause

include "LinkedJournal.i.dfy"
include "PagedJournalRefinement.i.dfy"

module LinkedJournalRefinement
// TODO refines RefinementObligation(JournalLabels, PagedJournal)
{
  import opened Options
  import opened Maps
  import opened MsgHistoryMod
  import opened LSNMod
  import PagedJournal
  import PagedJournalRefinement
  import opened LinkedJournal

  predicate Inv(v: Variables)
  {
    && v.WF()
    && v.truncatedJournal.Decodable()
  }
  
  function I(v: Variables) : PagedJournal.Variables
    requires v.WF()
    requires v.truncatedJournal.diskView.Acyclic()
  {
    PagedJournal.Variables(v.truncatedJournal.I(), v.unmarshalledTail)
  }

  lemma RankedIPtrFraming(dv1: DiskView, dv2: DiskView, r1: Ranking, r2: Ranking, ptr: Pointer)
    requires dv1.WF() && dv1.Acyclic() && dv1.PointersRespectRank(r1)
    requires dv2.WF() && dv2.Acyclic() && dv2.PointersRespectRank(r2)
    requires dv1.IsNondanglingPointer(ptr)
    requires dv1.IsSubDisk(dv2)
    requires dv1.boundaryLSN == dv2.boundaryLSN
    ensures dv1.RankedIPtr(ptr, r1) == dv2.RankedIPtr(ptr, r2)
    decreases if ptr.Some? then r1[ptr.value] else -1
  {
    if ptr.Some? {
      RankedIPtrFraming(dv1, dv2, r1, r2, dv1.entries[ptr.value].CroppedPrior(dv1.boundaryLSN));
    }
  }

  lemma IPtrFraming(dv1: DiskView, dv2: DiskView, ptr: Pointer)
    requires dv1.WF() && dv1.Acyclic()
    requires dv2.WF() && dv2.Acyclic()
    requires dv1.IsNondanglingPointer(ptr)
    requires dv1.IsSubDisk(dv2)
    requires dv1.boundaryLSN == dv2.boundaryLSN
    ensures dv1.IPtr(ptr) == dv2.IPtr(ptr)
  {
    RankedIPtrFraming(dv1, dv2, dv1.TheRanking(), dv2.TheRanking(), ptr);
  }

//  lemma BuildTightSubsetRanking(dv: DiskView, ptr: Pointer, ranking: Ranking)
//    requires dv.Decodable(ptr)
//    requires dv.PointersRespectRank(ranking)
//    ensures dv.RankedBuildTight(ptr, ranking).entries.Keys <= ranking.Keys
//    decreases if ptr.Some? then ranking[ptr.value] else -1
//  {
//    if ptr.Some? {
//      var next := dv.entries[ptr.value].CroppedPrior(dv.boundaryLSN);
//      BuildTightSubsetRanking(dv, next, ranking);
//    }
//  }
//  
  lemma BuildTightRanks(dv: DiskView, ptr: Pointer, ranking: Ranking)
    requires dv.Decodable(ptr)
    requires dv.PointersRespectRank(ranking)
    requires ptr.Some?
    ensures
      var next := dv.entries[ptr.value].CroppedPrior(dv.boundaryLSN);
      forall addr | addr in dv.RankedBuildTight(next, ranking).entries :: addr in ranking && ranking[addr] < ranking[ptr.value]
    decreases if ptr.Some? then ranking[ptr.value] else -1
  {
    var next := dv.entries[ptr.value].CroppedPrior(dv.boundaryLSN);
    if next.Some? {
      BuildTightRanks(dv, next, ranking);
    }
  }

  lemma RankedBuildTightShape(big: DiskView, root: Pointer, ranking: Ranking)
    requires root.Some?
    requires big.Decodable(root)
    requires big.PointersRespectRank(ranking)
    ensures
      big.RankedBuildTight(big.entries[root.value].CroppedPrior(big.boundaryLSN), ranking) ==
      DiskView(big.boundaryLSN, MapRemove1(big.RankedBuildTight(root, ranking).entries, root.value))
  {
    var next := big.entries[root.value].CroppedPrior(big.boundaryLSN);
    if next.Some? {
      BuildTightRanks(big, root, ranking);  // proves root.value !in big.RankedBuildTight(next, ranking).entries;
    }
  }

  lemma RankedIPtrIgnoresExtraBlocks(small: DiskView, ptr: Pointer, ranking: Ranking, big: DiskView)
    requires small.WF()
    requires big.WF()
    requires small.IsNondanglingPointer(ptr)
    requires big.PointersRespectRank(ranking)
    requires small.IsSubDisk(big)
    ensures big.RankedIPtr(ptr, ranking) == small.RankedIPtr(ptr, ranking)
    decreases if ptr.Some? then ranking[ptr.value] else -1 // I can't believe this works, Rustan!
  {
    if ptr.Some? {
      var next := big.entries[ptr.value].CroppedPrior(big.boundaryLSN);
      RankedIPtrIgnoresExtraBlocks(small, next, ranking, big);
    }
  }

  lemma TightSubDisk(big: DiskView, root: Pointer, ranking: Ranking, tight: DiskView)
    requires big.Decodable(root)
    requires big.PointersRespectRank(ranking)
    requires tight == big.RankedBuildTight(root, ranking)
    requires big.Acyclic()
    requires tight.IsSubDisk(big);
    ensures tight.IsTight(root)
    decreases if root.Some? then ranking[root.value] else -1 // I can't believe this works, Rustan!
  {
    if root.Some? {
      var next := big.entries[root.value].CroppedPrior(big.boundaryLSN);
      var inner := big.RankedBuildTight(next, ranking);
      BuildTightRanks(big, root, ranking);  // proves root.value !in big.RankedBuildTight(next, ranking).entries
      RankedBuildTightShape(big, root, ranking);
      TightSubDisk(big, next, ranking, inner);

      forall other:DiskView | && other.Decodable(root) && tight.IPtr(root) == other.IPtr(root) && other.IsSubDisk(tight)
          ensures other == tight {
        // any other tighter disk implies an "otherInner" disk tighter than inner, but inner.IsTight(next).
        var otherInner := DiskView(other.boundaryLSN, MapRemove1(other.entries, root.value));
        RankedIPtrIgnoresExtraBlocks(otherInner, next, ranking, inner);
        assert otherInner.PointersRespectRank(ranking); // trigger Acyclic
        assert inner.PointersRespectRank(ranking);  // trigger Acyclic
        RankedIPtrFraming(otherInner, otherInner, ranking, otherInner.TheRanking(), next);
        RankedIPtrFraming(inner, inner, ranking, inner.TheRanking(), next);
        assert otherInner.IPtr(next) == inner.IPtr(next); // trigger
      }
    }
  }

  lemma BuildTightBuildsSubDisks(big: DiskView, root: Pointer, ranking: Ranking)
    requires big.Decodable(root)
    requires big.PointersRespectRank(ranking)
    ensures big.RankedBuildTight(root, ranking).IsSubDisk(big)
    decreases if root.Some? then ranking[root.value] else -1 // I can't believe this works, Rustan!
  {
    if root.Some? {
      var next := big.entries[root.value].CroppedPrior(big.boundaryLSN);
      BuildTightBuildsSubDisks(big, next, ranking);
    }
  }

  lemma TightInterp(big: DiskView, root: Pointer, ranking: Ranking, tight: DiskView)
    requires big.Decodable(root)
    requires big.PointersRespectRank(ranking)
    requires tight == big.RankedBuildTight(root, ranking)
    requires big.Acyclic()
    ensures tight.IsSubDisk(big)
    ensures tight.IsTight(root)
    ensures tight.Decodable(root)
    ensures tight.IPtr(root) == big.IPtr(root)
    ensures tight.Acyclic()
    decreases if root.Some? then ranking[root.value] else -1 // I can't believe this works, Rustan!
  {
    if root.None? {
      assert tight.PointersRespectRank(ranking);
    } else {
      BuildTightBuildsSubDisks(big, root, ranking);
      TightSubDisk(big, root, ranking, tight);
      assert tight.PointersRespectRank(ranking);  // witness to Acyclic
      RankedIPtrIgnoresExtraBlocks(tight, root, ranking, big);
      RankedIPtrFraming(tight, tight, ranking, tight.TheRanking(), root);
      RankedIPtrFraming(big, big, ranking, big.TheRanking(), root);
    }
  }

  //////////////////////////////////////////////////////////////////////////////
  // non-state-machine function & predicate refinement lemmas

  lemma MkfsRefines()
    ensures Mkfs().diskView.Acyclic()
    ensures Mkfs().I() == PagedJournal.Mkfs()
  {
    assert Mkfs().diskView.PointersRespectRank(map[]);  // witness to exists ranking
  }

  //////////////////////////////////////////////////////////////////////////////
  // State machine refinement

  lemma InvInit(v: Variables, tj: TruncatedJournal)
    requires Init(v, tj)
    ensures Inv(v)
  {
  }

  lemma DiscardInterp(dv: DiskView, lsn: LSN, discarded: DiskView, ptr: Pointer)
    requires dv.WF()
    requires dv.Acyclic()
    requires dv.boundaryLSN <= lsn
    requires discarded == dv.DiscardOld(lsn)
    requires dv.IsNondanglingPointer(ptr)
    ensures discarded.Acyclic()
    ensures discarded.RankedIPtr(ptr, discarded.TheRanking()) == PagedJournal.DiscardOldJournalRec(dv.IPtr(ptr), lsn)
    decreases if ptr.Some? then dv.TheRanking()[ptr.value] else -1
  {
    assert discarded.PointersRespectRank(dv.TheRanking());
    if ptr.Some? && !(dv.entries[ptr.value].messageSeq.seqStart <= lsn) {
      DiscardInterp(dv, lsn, discarded, discarded.entries[ptr.value].CroppedPrior(discarded.boundaryLSN));
    }
  }

  lemma DiscardHarder(tj: TruncatedJournal, lsn: LSN, discarded: TruncatedJournal)
    requires tj.WF()
    requires tj.diskView.Acyclic()
    requires tj.I().WF()
    requires tj.I().I().CanDiscardTo(lsn)
    requires tj.SeqStart() <= lsn
    requires discarded == tj.DiscardOld(lsn)
    ensures discarded.diskView.Acyclic();
    ensures tj.I().WF();
    ensures tj.I().DiscardOld(lsn) == discarded.I()
  {
    assert discarded.diskView.PointersRespectRank(tj.diskView.TheRanking());
    DiscardInterp(tj.diskView, lsn, discarded.diskView, tj.freshestRec);
//    if lsn < tj.SeqEnd() {
//      assert discarded == TruncatedJournal(tj.freshestRec, tj.diskView.DiscardOld(lsn));
//      assert discarded.I() == PagedJournal.TruncatedJournal(discarded.diskView.boundaryLSN, discarded.diskView.IPtr(tj.freshestRec));
//      assert tj.I() == PagedJournal.TruncatedJournal(tj.diskView.boundaryLSN, tj.diskView.IPtr(tj.freshestRec));
//      assert tj.I().DiscardOld(lsn) == PagedJournal.TruncatedJournal(lsn, PagedJournal.DiscardOldJournalRec(tj.I().freshestRec, lsn));
//      assert discarded.diskView.boundaryLSN == lsn;
//      assert discarded.diskView.IPtr(tj.freshestRec) == discarded.diskView.RankedIPtr(tj.freshestRec, discarded.diskView.TheRanking());
//
//      assert discarded.diskView.RankedIPtr(tj.freshestRec, discarded.diskView.TheRanking()) == PagedJournal.DiscardOldJournalRec(tj.diskView.IPtr(tj.freshestRec), lsn);
//     
//      assert discarded.diskView.RankedIPtr(tj.freshestRec, discarded.diskView.TheRanking()) == PagedJournal.DiscardOldJournalRec(tj.I().freshestRec, lsn);
//      assert discarded.diskView.IPtr(tj.freshestRec) == PagedJournal.DiscardOldJournalRec(tj.I().freshestRec, lsn);
//      assert tj.I().DiscardOld(lsn) == discarded.I();
//    }
  }
    
  lemma SubDiskInterp(small: DiskView, big: DiskView, ptr: Pointer)
    requires big.WF()
    requires big.Acyclic()
    requires small.WF()
    requires small.IsSubDisk(big)
    requires small.boundaryLSN == big.boundaryLSN
    requires small.IsNondanglingPointer(ptr)
    ensures small.Acyclic()
    ensures small.RankedIPtr(ptr, small.TheRanking()) == big.RankedIPtr(ptr, big.TheRanking())
    decreases if ptr.Some? then big.TheRanking()[ptr.value] else -1
  {
    assert small.PointersRespectRank(big.TheRanking());
    if ptr.Some? {
      var jr := big.entries[ptr.value];
      SubDiskInterp(small, big, jr.CroppedPrior(big.boundaryLSN));
    }
  }
    
  lemma InvNext(v: Variables, v': Variables, lbl: TransitionLabel)
    requires Inv(v)
    requires Next(v, v', lbl)
    ensures Inv(v')
  {
    var step: Step :| NextStep(v, v', lbl, step);
    if step.ReadForRecoveryStep? {
      assert Inv(v');
    } else if step.FreezeForCommitStep? {
      assert Inv(v');
    } else if step.ObserveFreshJournalStep? {
      assert Inv(v');
    } else if step.PutStep? {
      assert Inv(v');
    } else if step.DiscardOldStep? {
      var lsn := lbl.startLsn;
      var croppedTJ := v.truncatedJournal.DiscardOld(lsn);
      var tightTJ := croppedTJ.BuildTight();

      assert croppedTJ.diskView.PointersRespectRank(v.truncatedJournal.diskView.TheRanking());
      assert croppedTJ.diskView.Acyclic();
      TightInterp(croppedTJ.diskView, croppedTJ.freshestRec, croppedTJ.diskView.TheRanking(), tightTJ.diskView);
      assert tightTJ.diskView.IsSubDisk(croppedTJ.diskView);
      assert tightTJ.WF();
      assert tightTJ.diskView.Acyclic();

//      assert v'.truncatedJournal.diskView.PointersRespectRank(diskView.TheRanking());  // ranking witness gets across both DiscardOld and tightening
      if !(v.unmarshalledTail.seqStart <= lsn) {
        assert v.SeqStart() == v.truncatedJournal.I().I().seqStart by { v.truncatedJournal.I().BuildReceipt().TJFacts(); }
        DiscardInterp(croppedTJ.diskView, lsn, croppedTJ.diskView.DiscardOld(lsn), v.truncatedJournal.freshestRec);
        SubDiskInterp(tightTJ.diskView, croppedTJ.diskView, croppedTJ.freshestRec);
//        calc {
//          v.truncatedJournal.I().DiscardOld(lsn).freshestRec;
//          // original paged discard
//          v.truncatedJournal.I().DiscardOldDefn(lsn).freshestRec;
//
//          croppedTJ.diskView.DiscardOld(lsn).RankedIPtr(v.truncatedJournal.freshestRec, croppedTJ.diskView.DiscardOld(lsn).TheRanking());
//          PagedJournal.DiscardOldJournalRec(croppedTJ.diskView.IPtr(croppedTJ.freshestRec), lsn);
//          croppedTJ.diskView.IPtr(croppedTJ.freshestRec);
//        }
//        calc {
//          croppedTJ.I();
//          PagedJournal.TruncatedJournal(croppedTJ.diskView.boundaryLSN, croppedTJ.diskView.IPtr(croppedTJ.freshestRec));
//          v.truncatedJournal.I().DiscardOld(lsn);
//        }
        DiscardHarder(v.truncatedJournal, lsn, croppedTJ);
        assert croppedTJ.I() == v.truncatedJournal.I().DiscardOld(lsn); // Trigger for v'.I().WF()
      }
      assert tightTJ.I() == croppedTJ.I();
      assert Inv(v');
    } else if step.InternalJournalMarshalStep? {
      // Witness new rank
      var rank :| v.truncatedJournal.diskView.PointersRespectRank(rank);
      var rank' := rank[step.addr :=
          if v.truncatedJournal.freshestRec.None? then 0
          else rank[v.truncatedJournal.freshestRec.value]+1];
      assert v'.truncatedJournal.diskView.PointersRespectRank(rank');

      IPtrFraming(v.truncatedJournal.diskView, v'.truncatedJournal.diskView, v.truncatedJournal.freshestRec);
      assert Inv(v');
    } else {
      assert false;
    }
  }

  lemma InitRefines(v: Variables, tj: TruncatedJournal)
    requires Init(v, tj)
    ensures PagedJournal.Init(I(v), tj.I())
  {
  }

  lemma NextRefines(v: Variables, v': Variables, lbl: TransitionLabel)
    requires Inv(v)
    requires Next(v, v', lbl)
    ensures v'.WF()
    ensures Inv(v')
    ensures PagedJournal.Next(I(v), I(v'), lbl.I())
  {
    InvNext(v, v', lbl);
    var step: Step :| NextStep(v, v', lbl, step);
    if step.ReadForRecoveryStep? {
      assert PagedJournal.NextStep(I(v), I(v'), lbl.I(), PagedJournal.ReadForRecoveryStep(step.receiptIndex)); // witness step
    } else if step.FreezeForCommitStep? {
      assert PagedJournal.NextStep(I(v), I(v'), lbl.I(), PagedJournal.FreezeForCommitStep(step.keepReceiptLines)); // witness step
    } else if step.ObserveFreshJournalStep? {
      assert PagedJournal.NextStep(I(v), I(v'), lbl.I(), PagedJournal.ObserveFreshJournalStep()); // witness step
    } else if step.PutStep? {
      assert PagedJournal.NextStep(I(v), I(v'), lbl.I(), PagedJournal.PutStep()); // witness step
    } else if step.DiscardOldStep? {
      var lsn := lbl.startLsn;
      if !(v.unmarshalledTail.seqStart <= lsn) {
        assert v.SeqStart() == I(v).truncatedJournal.I().seqStart by {
          var tj := v.truncatedJournal;
          var dv := v.truncatedJournal.diskView;
          PagedJournal.TruncatedJournal(dv.boundaryLSN, dv.IPtr(tj.freshestRec)).BuildReceipt().TJFacts();
        }
        var croppedTJ := v.truncatedJournal.DiscardOld(lbl.startLsn);
        DiscardInterp(v.truncatedJournal.diskView, lsn, croppedTJ.diskView, v.truncatedJournal.freshestRec);
        TightInterp(croppedTJ.diskView, croppedTJ.freshestRec, croppedTJ.diskView.TheRanking(), v'.truncatedJournal.diskView);
        assert v'.truncatedJournal.diskView.IsSubDisk(croppedTJ.diskView);
        SubDiskInterp(v'.truncatedJournal.diskView, croppedTJ.diskView, croppedTJ.freshestRec);
      }
      assert PagedJournal.NextStep(I(v), I(v'), lbl.I(), PagedJournal.DiscardOldStep()); // witness step
    } else if step.InternalJournalMarshalStep? {
      IPtrFraming(v.truncatedJournal.diskView, v'.truncatedJournal.diskView, v.truncatedJournal.freshestRec);
      assert PagedJournal.NextStep(I(v), I(v'), lbl.I(), PagedJournal.InternalJournalMarshalStep(step.cut)); // witness step
    } else {
      assert false;
    }
  }

  // Exporting a utility for BlockCoordSystem to reason about the TruncatedJournal
  // it takes away for inFlight.
//  //////////////////////////////////////////////////////////////////////////////
//  // Rob strategy
//  predicate InFlightMemberOfEphemeral(eph: Variables, inFlight: TruncatedJournal)
//  {
//    && inFlight.diskView.IsSubDisk(eph.diskView)
//    && eph.diskView.boundaryLSN <= inFlight.diskView.boundaryLSN
//    && inFlight.freshestRec somewhere in eph.receipt
//  }
//
//  lemma RobStyle(eph: Variables, inFlight: TruncatedJournal)
//    requires InFlightMemberOfEphemeral(eph, inFlight)
//    ensures inFlight.diskView.IsSubDisk(eph.DiscardOld(inFlight.SeqStart()).diskView)
//
//  lemma RobAdditionalOverwhelmingBurden(v: Variables, v': Variables, inFlight: TruncatedJournal)
//    requires InFlightMemberOfEphemeral(v, inFlight)
//    requires Next(v, v', anyLabel)
//    ensures InFlightMemberOfEphemeral(v', inFlight)
  //////////////////////////////////////////////////////////////////////////////

  // This is a piece of an invariant that BlockCoordinationSystem maintains,
  // not an invariant of the LinkedJournal.
  predicate InFlightSubDiskProperty(v: Variables, inFlight: TruncatedJournal)
  {
    && v.WF()
    && inFlight.WF()
    && v.truncatedJournal.diskView.boundaryLSN <= inFlight.SeqStart()
    && inFlight.diskView.IsSubDisk(v.truncatedJournal.DiscardOld(inFlight.SeqStart()).BuildTight().diskView)
  }
  
  lemma InFlightSubDiskCreated(v: Variables, v': Variables, lbl: TransitionLabel)
    requires lbl.FreezeForCommitLabel?
    requires Next(v, v', lbl)
    ensures InFlightSubDiskProperty(v', lbl.frozenJournal)
  {
    var cropped := v.truncatedJournal.DiscardOld(lbl.frozenJournal.SeqStart());
    var tight := cropped.BuildTight();
    TightInterp(cropped.diskView, cropped.freshestRec, cropped.diskView.TheRanking(), tight.diskView);
  }

  // TODO(jonh): Turns out this two lemma is entirely automated. Delete? Or export for automation control.
  lemma InFlightSubDiskPreserved(v: Variables, v': Variables, inFlight: TruncatedJournal)
    requires Next(v, v', InternalLabel())
    requires InFlightSubDiskProperty(v, inFlight)
    ensures InFlightSubDiskProperty(v', inFlight)
  {
    assert InFlightSubDiskProperty(v', inFlight);
  }
  
  //////////////////////////////////////////////////////////////////////////////
}
