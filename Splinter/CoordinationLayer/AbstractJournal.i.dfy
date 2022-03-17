// Copyright 2018-2021 VMware, Inc., Microsoft Inc., Carnegie Mellon University, ETH Zurich, and University of Washington
// SPDX-License-Identifier: BSD-2-Clause

include "StampedMap.i.dfy"
include "MsgHistory.i.dfy"

module JournalLabels {
  import opened MsgHistoryMod
  import opened LSNMod

  datatype TransitionLabel =
      ReadForRecoveryLabel(messages: MsgHistory)
    | FreezeForCommitLabel(startLsn: LSN, endLsn: LSN, frozenJournal: MsgHistory)
    | QueryEndLsnLabel(endLsn: LSN)
    | PutLabel(messages: MsgHistory)
    | DiscardOldLabel(startLsn: LSN, requireEnd: LSN)
      // TODO(jonh): requireEnd is an enabling-condition check to enforce
      // MapIsFresh in CommitComplete. I don't think it's actually necessary,
      // but removing it broke the CoordinationSystemRefinement proof and I
      // couldn't fix it in five minutes.
    | InternalLabel()
}

module AbstractJournal {
  import opened Options
  import opened MsgHistoryMod
  import opened LSNMod
  import opened JournalLabels

  // Mkfs is used by CoordinationSystem to define its Init
  function Mkfs() : MsgHistory
  {
    MsgHistoryMod.EmptyHistory
  }

  datatype Variables = Variables(journal: MsgHistory)
  {
    predicate WF() {
      && journal.WF()
    }

    predicate CanEndAt(lsn: LSN)
    {
      || journal.EmptyHistory?
      || journal.seqEnd == lsn
    }
  }

  // private:
  predicate ReadForRecovery(v: Variables, v': Variables, lbl: TransitionLabel)
  {
    && v.WF()
    && lbl.ReadForRecoveryLabel?
    && lbl.messages.WF()
    && v.journal.IncludesSubseq(lbl.messages)
    && v' == v
  }

  // frozenJournal is sort of an "output parameter".
  predicate FreezeForCommit(v: Variables, v': Variables, lbl: TransitionLabel)
  {
    && v.WF()
    && lbl.FreezeForCommitLabel?
    && lbl.frozenJournal.WF()
    && lbl.startLsn <= lbl.endLsn
    && v.journal.CanDiscardTo(lbl.startLsn)
    && v.journal.CanDiscardTo(lbl.endLsn)
    && lbl.frozenJournal == (if lbl.startLsn==lbl.endLsn
        then EmptyHistory
        else v.journal.DiscardOld(lbl.startLsn).DiscardRecent(lbl.endLsn))
    && v' == v
  }

  // This is the journal's half of a precondition check for Query: can't query the
  // map if we don't know it's up to date with the journal.
  predicate ObserveFreshJournal(v: Variables, v': Variables, lbl: TransitionLabel)
  {
    && v.WF()
    && lbl.QueryEndLsnLabel?
    && v.CanEndAt(lbl.endLsn)
    && v' == v
  }

  predicate Put(v: Variables, v': Variables, lbl: TransitionLabel)
  {
    && v.WF()
    && lbl.PutLabel?
    && lbl.messages.WF()
    && v.journal.CanConcat(lbl.messages)
    && v' == v.(journal := v.journal.Concat(lbl.messages))
  }

  predicate DiscardOld(v: Variables, v': Variables, lbl: TransitionLabel)
  {
    && v.WF()
    && lbl.DiscardOldLabel?
    && v.CanEndAt(lbl.requireEnd)
    && v.journal.CanDiscardTo(lbl.startLsn)
    && v'.journal == v.journal.DiscardOld(lbl.startLsn)
  }

  predicate Internal(v: Variables, v': Variables, lbl: TransitionLabel)
  {
    && lbl.InternalLabel?
    && v' == v
  }

  // public:
  predicate Init(v: Variables, persistentJournal: MsgHistory)
  {
    v == Variables(persistentJournal)
  }

  predicate Next(v: Variables, v': Variables, lbl: TransitionLabel)
  {
    match lbl {
      case ReadForRecoveryLabel(_) => ReadForRecovery(v, v', lbl)
      case FreezeForCommitLabel(_, _, _) => FreezeForCommit(v, v', lbl)
      case QueryEndLsnLabel(_) => ObserveFreshJournal(v, v', lbl)
      case PutLabel(_) => Put(v, v', lbl)
      case DiscardOldLabel(_, _) => DiscardOld(v, v', lbl)
      case InternalLabel() => Internal(v, v', lbl)
    }
  }
}
