include "../IOSystem.s.dfy"
include "../ProofObligations.s.dfy"
include "CoordProgramMod.i.dfy"

// This module shows refinement of CoordProgram to CrashTolerantMapSpecMod,
// thereby functioning as the top layer in a refinement stack for program
// models in refinement layers below.
module CoordProgramRefinement {
  import opened CoordProgramMod
  import opened MsgHistoryMod
  import opened KeyType
  import opened ValueMessage
  import MapSpecMod

  function I(v: CoordProgramMod.Variables) : CrashTolerantMapSpecMod.Variables
  {
    if !Inv(v)
    then CrashTolerantMapSpecMod.InitState()
    else if MapIsFresh(v)
      then v.ephemeral.journal.AsCrashTolerantMapSpec(v.persistentSuperblock.mapadt)
      else v.persistentSuperblock.journal.AsCrashTolerantMapSpec(v.persistentSuperblock.mapadt)
    
  }

  predicate InvLSNTracksPersistentWhenJournalEmpty(v: CoordProgramMod.Variables)
  {
    // We need this extra condition to ensure that, when the ephemeral journal
    // is empty, the ephemeral map indeed matches the disk -- otherwise we won't
    // assign the right lsn to new puts.
    && (v.ephemeral.Known? && v.ephemeral.journal.msgSeq.IsEmpty() ==>
        v.ephemeral.mapadt.seqEnd == v.persistentSuperblock.mapadt.seqEnd
      )
  }

  predicate InvInFlightImpliesFresh(v: CoordProgramMod.Variables)
  {
    v.inFlightSuperblock.Some? ==> MapIsFresh(v)
  }

  predicate InvCanBeheadJournalToInflightMapAdt(v: CoordProgramMod.Variables)
  {
    && v.WF()
    && InvInFlightImpliesFresh(v)
    && (v.inFlightSuperblock.Some? ==>
          v.ephemeral.journal.CanBeheadTo(v.inFlightSuperblock.value.mapadt.seqEnd)
      )

  }

  predicate Inv(v: CoordProgramMod.Variables)
  {
    && v.WF()
    && (v.ephemeral.Known? ==>
      // Interpret ephemeral state by stitching ephemeral journal (which
      // invariantly matches ephemeral mapadt) with persistent mapadt (which
      // it can follow exactly without beheading).
      && v.ephemeral.journal.CanFollow(v.persistentSuperblock.mapadt.seqEnd)
      && InvLSNTracksPersistentWhenJournalEmpty(v)
      )
    && InvCanBeheadJournalToInflightMapAdt(v)
  }

  lemma InitRefines(v: CoordProgramMod.Variables)
    requires CoordProgramMod.Init(v)
    ensures Inv(v)
    ensures I(v) == CrashTolerantMapSpecMod.InitState()
  {
    assert JournalInterpTypeMod.Mkfs().SyncReqsAt(0) == {}; // trigger set comprehension
  }

  lemma InvInductive(v: CoordProgramMod.Variables, v': CoordProgramMod.Variables, uiop: CoordProgramMod.UIOp)
    requires Inv(v)
    requires CoordProgramMod.Next(v, v', uiop)
    ensures Inv(v')
  {
    var step :| NextStep(v, v', uiop, step);
    match step {
      case LoadEphemeralStateStep() => {
        assert Inv(v');
      }
      case RecoverStep(puts) => {
        assert Inv(v');
      }
      case QueryStep(key, val) => {
        assert Inv(v');
      }
      case PutStep() => {
        assert Inv(v');
      }
//    case JournalInternalStep(sk) => { assert Inv(v'); }
//    case SplinterTreeInternalStep(sk) => { assert Inv(v'); }
      case ReqSyncStep(syncReqId) => {
        assert Inv(v');
      }
      case CompleteSyncStep(syncReqId) => {
        assert Inv(v');
      }
      case CommitStartStep(seqBoundary) => {
        var lsn := v.ephemeral.mapadt.seqEnd;
        var msgSeq := v.ephemeral.journal.msgSeq;
//        assert msgSeq.Behead(lsn).seqStart == lsn;
//        assert v.ephemeral.journal.Suffix(lsn).msgSeq.seqStart == lsn;
//        assert PersistentSB(v).journal.msgSeq.seqStart == PersistentSB(v).mapadt.seqEnd;
        assert v'.WF();
        assert Inv(v');
      }
      case CommitCompleteStep() => {
        var sb := v.inFlightSuperblock.value;
        var j := v.ephemeral.journal;
        var j' := v'.ephemeral.journal;
        assert j.CanBeheadTo(sb.mapadt.seqEnd);
        assert j' == j.Behead(sb.mapadt.seqEnd);
        assert v'.ephemeral.journal.CanFollow(v'.persistentSuperblock.mapadt.seqEnd);
        assert InvLSNTracksPersistentWhenJournalEmpty(v');

        assert v'.WF();
        assert Inv(v');
      }
    }
  }

  lemma NextRefines(v: CoordProgramMod.Variables, v': CoordProgramMod.Variables, uiop: CoordProgramMod.UIOp)
    requires Inv(v)
    requires CoordProgramMod.Next(v, v', uiop)
    ensures Inv(v')
    ensures CrashTolerantMapSpecMod.Next(I(v), I(v'), uiop)
  {
    InvInductive(v, v', uiop);
    assume false;
    assert CrashTolerantMapSpecMod.Next(I(v), I(v'), uiop);
  }
}
