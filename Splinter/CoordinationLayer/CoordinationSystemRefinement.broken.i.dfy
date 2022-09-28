// Copyright 2018-2021 VMware, Inc., Microsoft Inc., Carnegie Mellon University, ETH Zurich, and University of Washington
// SPDX-License-Identifier: BSD-2-Clause

include "CoordinationSystem.i.dfy"

// This module shows refinement of CoordinatorMod to
// CrashTolerantMapSpecMod, thereby functioning as the top layer in a
// refinement stack for program models in refinement layers below.

// TODO(jonh): satisfy a refinement-module proof obligation!
module CoordinationSystemRefinement {
  import opened SequencesLite // Last, DropLast
  import opened FloatingSeqMod
  import opened CM = CoordinationSystem
  import opened StampedMod
  import opened MsgHistoryMod
  import opened KeyType
  import opened ValueMessage
  import opened TotalKMMapMod
  import opened LSNMod
  import AbstractJournal
  import AbstractMap
  import MapSpecMod

  function IEJ(ctj: CrashTolerantJournal.Variables) : (out:MsgHistory)
    requires ctj.WF()
    requires ctj.ephemeral.Known?
    ensures out.WF()
  {
    ctj.ephemeral.v.journal
  }

  function IMap(ctm: CrashTolerantMap.Variables) : (out:StampedMap)
    requires ctm.WF()
    requires ctm.ephemeral.Known?
  {
    ctm.ephemeral.v.stampedMap
  }

  import Async = CM.Async
  type Journal = MsgHistory

  function EphemeralSeqEnd(v: Variables) : LSN
    requires v.WF() && v.journal.ephemeral.Known?
  {
    IEJ(v.journal).seqEnd
  }

  function StampedMapToVersion(sm: StampedMod.StampedMap) : CrashTolerantMapSpecMod.Version
  {
    Async.PersistentState(MapSpecMod.Variables(sm.value))
  }

  function FloatingVersions(base: StampedMod.StampedMap, msgHistory: MsgHistory, stableLSN: LSN) : (versions:FloatingSeq<CrashTolerantMapSpecMod.Version>)
    requires msgHistory.WF()
    requires msgHistory.CanFollow(base.seqEnd)
    requires msgHistory.CanDiscardTo(stableLSN)
    ensures |versions| == msgHistory.seqEnd+1
  {
    // TODO(jialin): jonh couldn't figure out how to attach requires to the lambda type in floatingSeq comprehension
    var arbitrary := Async.InitPersistentState();  // Can't figure out how to sneak requires into floatingSeq comprehension
    floatingSeq(stableLSN, msgHistory.seqEnd + 1,
      lsn =>
        if stableLSN <= lsn <= msgHistory.seqEnd 
        then StampedMapToVersion(MapPlusHistory(base, msgHistory.DiscardRecent(lsn)))
        else arbitrary)
  }

  function Ic() : CrashTolerantMapSpecMod.Constants
  {
    CrashTolerantMapSpecMod.Constants()
  }

  function I(v: Variables) : CrashTolerantMapSpecMod.Variables
  {
    if !Inv(v)
    then CrashTolerantMapSpecMod.InitState()  // silly-handler
    else
      var stableLSN := v.journal.persistent.seqEnd;
      if v.ephemeral.Known?
      then CrashTolerantMapSpecMod.Variables(
        FloatingVersions(v.mapadt.persistent, IEJ(v.journal), stableLSN),
          v.ephemeral.progress, v.ephemeral.syncReqs)
      else CrashTolerantMapSpecMod.Variables(
        FloatingVersions(v.mapadt.persistent, v.journal.persistent, stableLSN),
          Async.InitEphemeralState(), map[])
  }

  // Where these journals share an LSN, they map it to the same message.
  predicate {:opaque} JournalOverlapsAgree(j0: Journal, j1: Journal)
    requires j0.WF() && j1.WF()
  {
    forall lsn | j0.Contains(lsn) && j1.Contains(lsn) :: j0.msgs[lsn] == j1.msgs[lsn]
  }

  predicate JournalExtendsJournal(jlong: Journal, jshort: Journal, startLsn: LSN)
    requires jlong.WF() && jshort.WF()
    requires jlong.CanFollow(startLsn)
    requires jshort.CanFollow(startLsn)
  {
    && jlong.CanDiscardTo(jshort.seqEnd)            // jlong is longer
    && jlong.DiscardRecent(jshort.seqEnd) == jshort // they agree on contents in overlap
  }

  predicate InvPersistentJournalGeometry(v: Variables)
    requires v.WF()
  {
    && v.journal.persistent.CanFollow(v.mapadt.persistent.seqEnd)
  }

  predicate InvEphemeralGeometry(v: Variables)
    requires v.WF() && v.ephemeral.Known?
  {
    // Ephemeral journal begins at persistent map
    && IEJ(v.journal).CanFollow(v.mapadt.persistent.seqEnd)
    // Ephemeral map ends no earlier than persistent map
    && v.mapadt.persistent.seqEnd <= IMap(v.mapadt).seqEnd
    // Ephemeral journal ends no earlier than ephmeral map
    // (With the first conjunct, this conjunct happens to subsume the second conjunct,
    // but this was the nicest way to write it.)
    && IEJ(v.journal).CanDiscardTo(IMap(v.mapadt).seqEnd)
    // Ephemeral journal is no shorter than persistent state
    && v.journal.persistent.seqEnd <= EphemeralSeqEnd(v)
    // Local snapshot of mapLsn matched actual map state machine
    && v.ephemeral.mapLsn == v.mapadt.ephemeral.v.stampedMap.seqEnd
  }

  predicate InvEphemeralValueAgreement(v: Variables)
    requires v.WF() && v.ephemeral.Known?
    requires InvEphemeralGeometry(v)
  {
    // Ephemeral journal agrees with persistent journal
    && JournalOverlapsAgree(v.journal.persistent, IEJ(v.journal))
    // Ephemeral map state agrees with ephemeral journal (tacked onto persistent map)
    && IMap(v.mapadt) == MapPlusHistory(v.mapadt.persistent, IEJ(v.journal).DiscardRecent(IMap(v.mapadt).seqEnd))
  }

  predicate MapIsFrozen(v: Variables)
  {
    v.mapadt.inFlight.Some?
  }

  predicate CommitStarted(v: Variables)
  {
    v.journal.inFlight.Some?
  }
    
  predicate InvFrozenMapGeometry(v: Variables)
    requires v.WF() && v.ephemeral.Known?
    requires MapIsFrozen(v)
  {
    // frozen map hsan't passed ephemeral journal
    && v.mapadt.inFlight.value.seqEnd <= EphemeralSeqEnd(v)
    // Frozen map doesn't regress before persistent map
    && v.mapadt.persistent.seqEnd <= v.mapadt.inFlight.value.seqEnd
  }

  predicate InvFrozenMapValueAgreement(v: Variables)
    requires v.WF()
    requires v.ephemeral.Known?
    requires InvEphemeralGeometry(v)
    requires MapIsFrozen(v)
    requires InvFrozenMapGeometry(v)
  {
    v.mapadt.inFlight.value == MapPlusHistory(v.mapadt.persistent, IEJ(v.journal).DiscardRecent(v.mapadt.inFlight.value.seqEnd))
    // NB: Frozen Journal agreement comes "for free" because the frozen
    // journal is just defined as the frozenJournalLSN prefix of the
    // ephemeral journal.
  }

  predicate InvCommitStartedGeometry(v: Variables)
    requires v.WF()
    requires CommitStarted(v)
  {
    && var ifMap := v.mapadt.inFlight.value;
    && var ifJournal := v.journal.inFlight.value;

    // We need a well-behaved journal to relate in-flight state to.
    && v.ephemeral.Known?
    && InvEphemeralGeometry(v)

    // Geometry properties
    // In-flight map + journal stitch.
    && ifJournal.CanFollow(ifMap.seqEnd)
    // Commiting in-flight state won't shrink persistent state
    && v.journal.persistent.seqEnd <= ifJournal.seqEnd
    // In-flight map doesn't precede persistent map -- that would cause
    // forgotten lsns to pop back into existence, and we don't have those lsns
    // in the ephemeral journal to compare to.
    && v.mapadt.persistent.seqEnd <= ifMap.seqEnd
    // in-flight view hsan't passed ephemeral journal
    && ifJournal.seqEnd <= EphemeralSeqEnd(v)
  }

  predicate InvCommitStartedValueAgreement(v: Variables)
    requires v.WF() && CommitStarted(v)
    requires InvCommitStartedGeometry(v)
  {
    && var ifMap := v.mapadt.inFlight.value;
    && var ifJournal := v.journal.inFlight.value;

    // in-flight journal is consistent with the persistent journal
    && JournalOverlapsAgree(ifJournal, v.journal.persistent)
    // in-flight journal is consistent with the ephemeral journal
    && JournalOverlapsAgree(ifJournal, IEJ(v.journal))
    // in-flight map matches corresponding state in ephemeral world
    && ifMap == MapPlusHistory(v.mapadt.persistent,
                      IEJ(v.journal).DiscardRecent(ifMap.seqEnd))
  }

  predicate Inv(v: Variables)
  {
    && v.WF()
    && InvPersistentJournalGeometry(v)
    && (v.ephemeral.Unknown? ==> !MapIsFrozen(v) && !CommitStarted(v))
    && (v.ephemeral.Known? ==>
        && InvEphemeralGeometry(v)
        && InvEphemeralValueAgreement(v)
        && (MapIsFrozen(v) ==>
            && InvFrozenMapGeometry(v)
            && InvFrozenMapValueAgreement(v)
          )
      )
    && (CommitStarted(v) ==>
      && InvCommitStartedGeometry(v)
      && InvCommitStartedValueAgreement(v)
      )
  }

  lemma InitRefines(v: Variables)
    requires v.Init()
    ensures Inv(v)
    ensures I(v) == CrashTolerantMapSpecMod.InitState()
  {
    assert I(v).versions[0].appv.kmmap == TotalKMMapMod.EmptyTotalMap(); // trigger
  }

  lemma CommitStepPreservesHistory(v: Variables, v': Variables, uiop: UIOp, step: Step, lsn: LSN)
    requires Inv(v)
    requires Next(v, v', uiop)
    requires NextStep(v, v', uiop, step);
    requires step.CommitCompleteStep?
    requires v.mapadt.persistent.seqEnd <= lsn <= EphemeralSeqEnd(v)
    requires v.mapadt.inFlight.value.seqEnd <= lsn  // Can't do much with lsns that have been forgotten
    ensures IEJ(v'.journal).CanDiscardTo(lsn);
    ensures MapPlusHistory(v.mapadt.persistent, IEJ(v.journal).DiscardRecent(lsn))
            == MapPlusHistory(v'.mapadt.persistent, IEJ(v'.journal).DiscardRecent(lsn));
  {
    // There are six pieces in play here: the persistent and in-flight images and the ephemeral journals:
    //  _________ __________
    // | pdi.map | pdi.jrnl |
    //  --------- ----------
    //  ______________R__________
    // | idi.map      | idi.jrnl |
    //  -------------- ----------
    //            ____________________
    //           | eph.jrnl           |
    //            --------------------
    //                 _______________
    //                | eph'.jrnl     |
    //                 ---------------
    // "R" is the "reference LSN" -- that's where we're going to prune ephemeral.journal, since
    // after the commit it is going to be the LSN of the persistent map.

    var refLsn := v.mapadt.inFlight.value.seqEnd;
    var ej := IEJ(v.journal);
    var eji := ej.DiscardRecent(lsn);

    // Here's a calc, but in comments so we can use a shorthand algebra:
    // Let + represent both MapPlusHistory and Concat (they're associative).
    // Let [x..] represent DiscardOld(x) and [..y] represent DiscardRecent(y).
    // var im:=v.inFlightImage.value.mapadt, pm:=v.mapadt.persistent, R:=im.seqEnd
    // pm'+ej'[..lsn]
    // im+ej'[..lsn]
    // im+ej[..lsn][R..]
    //   {InvInFlightVersionAgreement}
    // (pm+ej[..R])+ej[..lsn][R..]
    JournalAssociativity(v.mapadt.persistent, ej.DiscardRecent(refLsn), ej.DiscardRecent(lsn).DiscardOld(refLsn));
    // pm+(ej[..R]+ej[..lsn][R..])
    assert ej.DiscardRecent(refLsn) == ej.DiscardRecent(lsn).DiscardRecent(refLsn);  // because R <= lsn; smaller lsn are Forgotten
    // pm+(ej[..lsn][..R]+ej[..lsn][R..])
    assert eji.DiscardRecent(refLsn).Concat(eji.DiscardOld(refLsn)) == eji;  // trigger
    // pm+ej[..lsn]
  }

  lemma {:timeLimitMultiplier 2} InvInductivePutStep(v: Variables, v': Variables, uiop: UIOp, step: Step)
    requires Inv(v)
    requires Next(v, v', uiop)
    requires NextStep(v, v', uiop, step)
    requires step.PutStep?
    ensures Inv(v')
  {
    reveal_JournalOverlapsAgree();
    if MapIsFrozen(v) {
      var frozenEnd := v.mapadt.inFlight.value.seqEnd;
      assert IEJ(v.journal).DiscardRecent(frozenEnd) == IEJ(v'.journal).DiscardRecent(frozenEnd); // trigger
    }

    // InvEphemeralMapIsJournalSnapshot
    var key := uiop.baseOp.req.input.key;
    var val := uiop.baseOp.req.input.value;
    var singleton := MsgHistoryMod.SingletonAt(v.ephemeral.mapLsn, KeyedMessage(key, Define(val)));
    JournalAssociativity(v.mapadt.persistent, IEJ(v.journal), singleton);
    assert IEJ(v.journal).DiscardRecent(IMap(v.mapadt).seqEnd) == IEJ(v.journal); // trigger
    assert IEJ(v'.journal) == IEJ(v'.journal).DiscardRecent(IMap(v'.mapadt).seqEnd); // trigger
    // TODO(chris): I'm wondering why these subexpressions aren't sort of
    // self-triggering? It's a very common pattern in this code.
//    calc {
//      v'.ephemeral.mapadt;
//      MapPlusHistory(v.ephemeral.mapadt, singleton);
//      MapPlusHistory(MapPlusHistory(v.mapadt.persistent, v.ephemeral.journal.DiscardRecent(v.ephemeral.mapadt.seqEnd)), singleton);
//      MapPlusHistory(MapPlusHistory(v.mapadt.persistent, v.ephemeral.journal), singleton);
//      MapPlusHistory(v.mapadt.persistent, v.ephemeral.journal.Concat(singleton));
//      MapPlusHistory(v.mapadt.persistent, v'.ephemeral.journal);
//      MapPlusHistory(v'.mapadt.persistent, v'.ephemeral.journal.DiscardRecent(v'.ephemeral.mapadt.seqEnd));
//    }
    assert Inv(v');
  }

  lemma InvInductiveCommitStartStep(v: Variables, v': Variables, uiop: UIOp, step: Step)
    requires Inv(v)
    requires Next(v, v', uiop)
    requires NextStep(v, v', uiop, step)
    requires step.CommitStartStep?
    ensures Inv(v')
  {
    reveal_JournalOverlapsAgree();
  }

  lemma InvInductiveCommitCompleteStep(v: Variables, v': Variables, uiop: UIOp, step: Step)
    requires Inv(v)
    requires Next(v, v', uiop)
    requires NextStep(v, v', uiop, step)
    requires step.CommitCompleteStep?
    ensures Inv(v')
  {
    reveal_JournalOverlapsAgree();

    var emEnd := IMap(v.mapadt).seqEnd;
    var ej := IEJ(v.journal);
    var imEnd := v.mapadt.inFlight.value.seqEnd;

    JournalAssociativity(v.mapadt.persistent, ej.DiscardRecent(imEnd), ej.DiscardOld(imEnd).DiscardRecent(emEnd));
    assert ej.DiscardRecent(emEnd) == ej.DiscardRecent(imEnd).Concat(ej.DiscardOld(imEnd).DiscardRecent(emEnd));   // trigger
  }

  lemma InvInductive(v: Variables, v': Variables, uiop: UIOp)
    requires Inv(v)
    requires Next(v, v', uiop)
    ensures Inv(v')
  {
    var step :| NextStep(v, v', uiop, step);
    match step {
      case LoadEphemeralFromPersistentStep() => {
        reveal_JournalOverlapsAgree();
        assert Inv(v');
      }
      case RecoverStep(puts) => {
        // InvEphemeralMapIsJournalSnapshot
        var em := IMap(v.mapadt);
        var ej := IEJ(v.journal);
        JournalAssociativity(v.mapadt.persistent, ej.DiscardRecent(em.seqEnd), puts);
        assert ej.DiscardRecent(em.seqEnd).Concat(puts)
          == IEJ(v'.journal).DiscardRecent(IMap(v'.mapadt).seqEnd);  // trigger
      }
      case AcceptRequestStep() => {
        assert Inv(v');
      }
      case QueryStep() => {
        assert Inv(v');
      }
      case PutStep() => {
        InvInductivePutStep(v, v', uiop, step);
      }
      case DeliverReplyStep() => {
        assert Inv(v');
      }
      case JournalInternalStep() => { assert Inv(v'); }
      case MapInternalStep() => { assert Inv(v'); }
      case ReqSyncStep() => {
        assert Inv(v');
      }
      case ReplySyncStep() => {
        assert Inv(v');
      }
      case CommitStartStep(frozenJournal) => {
        InvInductiveCommitStartStep(v, v', uiop, step);
      }
      case CommitCompleteStep() => {
        InvInductiveCommitCompleteStep(v, v', uiop, step);
      }
      case CrashStep() => {
        assert Inv(v');
      }
    }
  }

  lemma {:timeLimitMultiplier 2} JournalAssociativity(x: StampedMap, y: Journal, z: Journal)
    requires y.WF()
    requires z.WF()
    requires y.CanFollow(x.seqEnd)
    requires z.CanFollow(y.seqEnd)
    ensures MapPlusHistory(MapPlusHistory(x, y), z) == MapPlusHistory(x, y.Concat(z))
    decreases z.Len();
  {
    if !z.IsEmpty() {
      var ztrim := z.DiscardRecent(z.seqEnd - 1);
      var yz := y.Concat(z);


      JournalAssociativity(x, y, ztrim);
      assert yz.DiscardRecent(yz.seqEnd - 1) == y.Concat(ztrim); // trigger
    }
  }

  lemma {:timeLimitMultiplier 4} PutStepRefines(v: Variables, v': Variables, uiop: UIOp, step: Step)
    requires Inv(v)
    requires Next(v, v', uiop)
    requires NextStep(v, v', uiop, step);
    requires step.PutStep?
    ensures Inv(v')
    ensures CrashTolerantMapSpecMod.Next(Ic(), I(v), I(v'), uiop)
  {
    InvInductivePutStep(v, v', uiop, step);

    var j := IEJ(v.journal);
    var j' := IEJ(v'.journal);
    var base := v.mapadt.persistent;
    var key := uiop.baseOp.req.input.key;
    var value := uiop.baseOp.req.input.value;

    assert j'.MsgHistory? ==> j' == j'.DiscardRecent(j'.Len() + j'.seqStart);  // seq trigger
    assert j.MsgHistory? ==> j == j.DiscardRecent(j.Len() + j.seqStart);  // seq trigger

    assert forall i | v.mapadt.persistent.seqEnd<=i<|I(v).versions| :: j'.DiscardRecent(i) == j.DiscardRecent(i);  // Rob Power Trigger

    assert CrashTolerantMapSpecMod.NextStep(Ic(), I(v), I(v'), uiop); // witness
  }

  lemma CommitCompleteNext(v: Variables, v': Variables, uiop: UIOp, step: Step)
    requires Inv(v)
    requires Next(v, v', uiop)
    requires NextStep(v, v', uiop, step);
    requires step.CommitCompleteStep?
    ensures Inv(v')
    ensures CrashTolerantMapSpecMod.Next(Ic(), I(v), I(v'), uiop)
  {
    // See description & diagram in CommitStepPreservesHistory.
    InvInductive(v, v', uiop);
    forall lsn | I(v').versions.IsActive(lsn)
        ensures I(v').versions[lsn] == I(v).versions.GetSuffix(I(v').StableIndex())[lsn]
    {
      if v.journal.inFlight.value.seqEnd <= lsn {
        CommitStepPreservesHistory(v, v', uiop, step, lsn);
      }
    }
    I(v').versions.Extensionality(I(v).versions.GetSuffix(I(v').StableIndex()));

    assert CrashTolerantMapSpecMod.NextStep(Ic(), I(v), I(v'), UIOp.SyncOp);  // witness
  }

  // Infuriating timetouts driving me back to IronFleet punts
  lemma BatchNextA(v: Variables, v': Variables, uiop: UIOp, step: Step)
    requires Inv(v)
    requires Next(v, v', uiop)
    requires NextStep(v, v', uiop, step);
    requires
      || step.LoadEphemeralFromPersistentStep?
      || step.RecoverStep?
      || step.AcceptRequestStep?
      || step.QueryStep?
      || step.DeliverReplyStep?
    ensures Inv(v')
    ensures CrashTolerantMapSpecMod.Next(Ic(), I(v), I(v'), uiop)
  {
    InvInductive(v, v', uiop);
    if step.LoadEphemeralFromPersistentStep? {
      assert uiop == UIOp.NoopOp;
    }
    assert CrashTolerantMapSpecMod.NextStep(Ic(), I(v), I(v'), uiop);
  }

  lemma BatchNextB(v: Variables, v': Variables, uiop: UIOp, step: Step)
    requires Inv(v)
    requires Next(v, v', uiop)
    requires NextStep(v, v', uiop, step);
    requires
      || step.JournalInternalStep?
      || step.MapInternalStep?
      || step.ReqSyncStep?
      || step.ReplySyncStep?
      || step.CommitStartStep?
    ensures Inv(v')
    ensures CrashTolerantMapSpecMod.Next(Ic(), I(v), I(v'), uiop)
  {
    InvInductive(v, v', uiop);
    assert CrashTolerantMapSpecMod.NextStep(Ic(), I(v), I(v'), uiop);
  }

  lemma {:timeLimitMultiplier 2} CrashNext(v: Variables, v': Variables, uiop: UIOp, step: Step)
    requires Inv(v)
    requires Next(v, v', uiop)
    requires NextStep(v, v', uiop, step);
    requires step.CrashStep?
    ensures Inv(v')
    ensures CrashTolerantMapSpecMod.Next(Ic(), I(v), I(v'), uiop)
  {
    reveal_JournalOverlapsAgree();
    var stableLSN := v'.journal.persistent.seqEnd;
    if v.ephemeral.Known? {
      // assert forall lsn | v.mapadt.persistent.seqEnd <= lsn < stableLSN :: true; // trigger
      // assert v'.journal.persistent.DiscardRecent(stableLSN) == IEJ(v.journal).DiscardRecent(stableLSN); // trigger
    }
    // assert CrashTolerantMapSpecMod.Crash(I(v), I(v'));  //trigger
    assert CrashTolerantMapSpecMod.NextStep(Ic(), I(v), I(v'), uiop); // case boilerplate

    assert CrashTolerantMapSpecMod.NextStep(Ic(), I(v), I(v'), UIOp.CrashOp);  // witness
  }

  lemma NextRefines(v: Variables, v': Variables, uiop: UIOp)
    requires Inv(v)
    requires Next(v, v', uiop)
    ensures Inv(v')
    ensures CrashTolerantMapSpecMod.Next(Ic(), I(v), I(v'), uiop)
  {
    InvInductive(v, v', uiop);

    var step :| NextStep(v, v', uiop, step);
    match step {
      case LoadEphemeralFromPersistentStep() => { BatchNextA(v, v', uiop, step); }
      case RecoverStep(puts) => { BatchNextA(v, v', uiop, step); }
      case AcceptRequestStep() => { BatchNextA(v, v', uiop, step); }
      case QueryStep() => { BatchNextA(v, v', uiop, step); }
      case PutStep() => { PutStepRefines(v, v', uiop, step); }
      case DeliverReplyStep() => { BatchNextA(v, v', uiop, step); }
      case JournalInternalStep() => { BatchNextB(v, v', uiop, step); }
      case MapInternalStep() => { BatchNextB(v, v', uiop, step); }
      case ReqSyncStep() => { BatchNextB(v, v', uiop, step); }
      case ReplySyncStep() => { BatchNextB(v, v', uiop, step); }
      case CommitStartStep(frozenJournal) => { BatchNextB(v, v', uiop, step); }
      case CommitCompleteStep() => { CommitCompleteNext(v, v', uiop, step); }
      case CrashStep() => { CrashNext(v, v', uiop, step); }
    }
  }
}
