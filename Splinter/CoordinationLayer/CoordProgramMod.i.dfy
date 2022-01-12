// Copyright 2018-2021 VMware, Inc., Microsoft Inc., Carnegie Mellon University, ETH Zurich, and University of Washington
// SPDX-License-Identifier: BSD-2-Clause

include "JournalInterp.i.dfy"
include "../../Spec/Interp.s.dfy"
include "../../lib/Base/KeyType.s.dfy"

module CoordProgramMod {
  import opened Options
  import InterpMod
  import JournalInterpTypeMod
  import opened CrashTolerantMapSpecMod
  import opened MsgHistoryMod
  import opened KeyType
  import opened ValueMessage
//  import opened SequenceSetsMod
//  import D = AsyncDisk  // Importing for the interface, not the entire disk

  type UIOp = CrashTolerantMapSpecMod.UIOp
  type Journal = JournalInterpTypeMod.Variables
  type MapAdt = InterpMod.Interp

  function MapAdtMkfs() : MapAdt {
    InterpMod.Empty()
  }

  // Persistent state of disk
  datatype Superblock = Superblock(
    journal: Journal,
    mapadt: MapAdt)
  {
    predicate WF()
    {
      && journal.WF()
      // No point even assembling a superblock that doesn't have its journal adjacent to its map.
      && journal.CanFollow(mapadt.seqEnd)

    }
  }

  // In-memory state. It may be unknown if we've just booted and haven't
  // read anything off the disk.
  datatype Ephemeral =
    | Unknown
    | Known(journal: Journal, mapadt: MapAdt)
  {
    predicate WF()
    {
      Known? ==> journal.WF()
    }
  }

  datatype Variables = Variables(
    persistentSuperblock: Superblock,
    ephemeral: Ephemeral,
    inFlightSuperblock: Option<Superblock>
    )
  {
    predicate WF()
    {
      && persistentSuperblock.WF()
      && (ephemeral.Known? ==> ephemeral.WF())
      && (inFlightSuperblock.Some? ==> inFlightSuperblock.value.WF())
    }

    // How should the disk look on first startup if we want it to act like
    // an empty K-V store?
    predicate Mkfs()
    {
      && persistentSuperblock == Superblock(
        JournalInterpTypeMod.Mkfs(),
        MapAdtMkfs())
      && ephemeral.Unknown?
      && inFlightSuperblock.None?
    }

  }

  // Since this state machine is an abstraction of the entire IOSystem (including
  // disk and crashes), this Init is the Mkfs() step. Reboots (where RAM is cleared
  // but disk state remains) appear elsewhere.
  predicate Init(v: Variables)
  {
    v.Mkfs()
  }

  // Learn what the persistent state is, so we 
  // (In the next layer down, we don't bring *all* the persistent state into
  // ephemeral RAM, but the proof can still refine by filling the details from
  // the disk state.)
  predicate LoadEphemeralState(v: Variables, v': Variables, uiop : UIOp)
  {
    && uiop.NoopOp?
    && v.ephemeral.Unknown?
    && v' == v.(ephemeral := Known(v.persistentSuperblock.journal, v.persistentSuperblock.mapadt))
  }

  predicate MapIsFresh(v: Variables)
  {
    && v.WF()
    && v.ephemeral.Known?
    && v.ephemeral.mapadt.seqEnd == v.ephemeral.journal.msgSeq.seqEnd
  }

  // Move some journal state into the map to make it (closer to) fresh
  predicate Recover(v: Variables, v': Variables, uiop : UIOp, puts:MsgSeq)
  {
    && uiop.NoopOp?
    && v.WF()
    && v.ephemeral.Known?
    && !MapIsFresh(v)
    && v'.WF()

    && puts.WF()
    && puts.seqStart == v.ephemeral.mapadt.seqEnd
    && v.ephemeral.journal.msgSeq.IncludesSubseq(puts)

    // NB that Recover can interleave with mapadt steps (the Betree
    // reorganizing its state, possibly flushing stuff out to disk).
    && v' == v.(ephemeral := v.ephemeral.(mapadt := MsgHistoryMod.Concat(v.ephemeral.mapadt, puts)))
  }

  predicate Query(v: Variables, v': Variables, uiop : UIOp, key: Key, val: Value)
  {
    && uiop.OperateOp?
    && uiop.baseOp.ExecuteOp?
    && uiop.baseOp.req.input.GetInput? // ensures that the uiop translates to a Get op
    && MapIsFresh(v)
    && val == v.ephemeral.mapadt.mi[key].value
    && v' == v  // TODO update new reqs/resps fields to record retirement of uiop
  }

  predicate Put(v: Variables, v': Variables, uiop : UIOp)
  {
    && uiop.OperateOp?
    && uiop.baseOp.ExecuteOp?
    && uiop.baseOp.req.input.PutInput? // ensures that the uiop translates to a put op
 
    && var key := uiop.baseOp.req.input.k;
    && var val := uiop.baseOp.req.input.v;

    // Here we're not allowing puts until MapIsFresh, and then maintaining that
    // invariant. We could alternately allow puts to run ahead, and then just
    // let Queries be delayed until Recover catches up the mapadt.
    // I'm modeling it this way because this matches the phase-driven behavior
    // (recover, then be done recovering until next crash) we expect the real
    // implementation to maintain.
    && MapIsFresh(v)

    && var singleton :=
        MsgHistoryMod.Singleton(v.ephemeral.mapadt.seqEnd, KeyedMessage(key, Define(val)));

    && v.WF()
    && v' == v.(ephemeral := Known(
      v.ephemeral.journal.(msgSeq := v.ephemeral.journal.msgSeq.Concat(singleton)),
      MsgHistoryMod.Concat(v.ephemeral.mapadt, singleton)
      ))
  }

  // TODO Inteprereted data model doesn't leave much room to model Journal
  // or Betree *internal* steps, because they're noops at the interp layer.
  // Should we capture that here, maybe with a "secret" field of the mapadt,
  // representing its internal representation, that can change but the mapadt
  // interp stays unchanged?
  // One bit of mapadt internal state might be the frozen interp. YEAH THAT
  // One bit of journal internal state might be the how much is known to be clean.

  // predicate JournalInternal(v: Variables, v': Variables, uiop : UIOp, cacheOps: CacheIfc.Ops, sk: JournalMachineMod.Skolem)
  // predicate SplinterTreeInternal(v: Variables, v': Variables, uiop : UIOp, cacheOps: CacheIfc.Ops, sk: SplinterTreeMachineMod.Skolem)

  predicate ReqSync(v: Variables, v': Variables, uiop : UIOp, syncReqId: SyncReqId)
  {
    && uiop == ReqSyncOp(syncReqId)
    && MapIsFresh(v) // Actually, v.ephemeral.Known? is sufficient here.
    && v'.ephemeral.Known?
    && JournalInterpTypeMod.ReqSync(v.ephemeral.journal, v'.ephemeral.journal, syncReqId)
    && v' == v.(ephemeral := v.ephemeral.(journal := v'.ephemeral.journal))  // unchanged except journal changes as specified above
  }

  predicate CompleteSync(v: Variables, v': Variables, uiop : UIOp, syncReqId: SyncReqId)
  {
    && uiop == CompleteSyncOp(syncReqId)
    && MapIsFresh(v) // Actually, v.ephemeral.Known? is sufficient here.
    && v'.ephemeral.Known?
    && JournalInterpTypeMod.CompleteSync(v.ephemeral.journal, v'.ephemeral.journal, syncReqId)
    && v' == v.(ephemeral := v.ephemeral.(journal := v'.ephemeral.journal))  // unchanged except journal changes as specified above
  }

  function PersistentSB(v: Variables) : Superblock
    requires MapIsFresh(v)
  {
    Superblock(
      v.ephemeral.journal.Behead(v.ephemeral.mapadt.seqEnd),
      v.ephemeral.mapadt) // TODO change this to use frozen
      // TODO should also forget IO retirement receipts and syncreqs.
  }

  predicate CommitStart(v: Variables, v': Variables, uiop : UIOp, seqBoundary: LSN)
  {
    && uiop.NoopOp?
    && MapIsFresh(v) // Actually, v.ephemeral.Known? is sufficient here.
    && v.inFlightSuperblock.None?
    && v'.inFlightSuperblock.Some?
    && v' == v.(inFlightSuperblock := Some(PersistentSB(v)))
  }

  predicate CommitComplete(v: Variables, v': Variables, uiop : UIOp)
  {
    && uiop.NoopOp?
    && MapIsFresh(v) // Actually, v.ephemeral.Known? is sufficient here.
    && v.inFlightSuperblock.Some?

    && var sb := v.inFlightSuperblock.value;

    // Now that the disk journal is updated, we need to behead the
    // ephemeral journal, since interpretation want to CanFollow it
    // onto the persistent mapadt.
    && var j := v.ephemeral.journal;
    && var j' :=
      if j.CanBeheadTo(sb.mapadt.seqEnd)
      then j.Behead(sb.mapadt.seqEnd)
      else j;    // Case never occurs, but need Inv to prove so.

    && v' == v.(
        persistentSuperblock := sb,
        ephemeral := v.ephemeral.(journal := j'),
        // Update journal, mapadt here if modeling clean, frozen
        inFlightSuperblock := None)
  }

  datatype Step =
    | LoadEphemeralStateStep()
    | RecoverStep(puts:MsgSeq)
    | QueryStep(key: Key, val: Value)
    | PutStep()
//    | JournalInternalStep()
//    | SplinterTreeInternalStep()
    | ReqSyncStep(syncReqId: SyncReqId)
    | CompleteSyncStep(syncReqId: SyncReqId)
    | CommitStartStep(seqBoundary: LSN)
    | CommitCompleteStep()

  predicate NextStep(v: Variables, v': Variables, uiop : UIOp, step: Step) {
    match step {
      case LoadEphemeralStateStep() => LoadEphemeralState(v, v', uiop)
      case RecoverStep(puts) => Recover(v, v', uiop, puts)
      case QueryStep(key, val) => Query(v, v', uiop, key, val)
      case PutStep() => Put(v, v', uiop)
//      case JournalInternalStep(sk) => JournalInternal(v, v', uiop, cacheOps, sk)
//      case SplinterTreeInternalStep(sk) => SplinterTreeInternal(v, v', uiop, cacheOps, sk)
      case ReqSyncStep(syncReqId) => ReqSync(v, v', uiop, syncReqId)
      case CompleteSyncStep(syncReqId) => CompleteSync(v, v', uiop, syncReqId)
      case CommitStartStep(seqBoundary) => CommitStart(v, v', uiop, seqBoundary)
      case CommitCompleteStep() => CommitComplete(v, v', uiop)
    }
  }

  predicate Next(v: Variables, v': Variables, uiop: UIOp) {
    exists step :: NextStep(v, v', uiop, step)
  }
}
