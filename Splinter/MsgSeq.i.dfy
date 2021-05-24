// Copyright 2018-2021 VMware, Inc., Microsoft Inc., Carnegie Mellon University, ETH Zurich, and University of Washington
// SPDX-License-Identifier: BSD-2-Clause

include "../lib/Base/Sequences.i.dfy"
include "../lib/Base/Maps.i.dfy"
include "../lib/Base/Option.s.dfy"
include "Allocation.i.dfy"

// QUESTION: Helper module that contains what exactly?
module MsgSeqMod {
  import opened Sequences
  import opened Maps
  import opened Options
  import opened MessageMod
  import opened InterpMod

  datatype MsgSeq = MsgSeq(msgs: map<LSN, Message>, seqStart: LSN, seqEnd: LSN)
    // seqEnd is exclusive
  {
    predicate Contains(lsn: LSN)
    {
      seqStart <= lsn < seqEnd
    }

    // For use in map comprehensions, where "lsn in msgSeq.Contains()" doesn't
    // satisfy Dafny's bounded set heuristic.
    function {:opaque} LSNSet() : (lsns: set<LSN>)
      ensures forall lsn :: lsn in lsns <==> seqStart <= lsn < seqEnd
    {
      set lsn | seqStart <= lsn < seqEnd
    }

    function Len() : nat
      requires WF()
    {
      seqEnd - seqStart
    }

    predicate WF()
    {
      && seqStart <= seqEnd
      && (seqStart==seqEnd ==> seqStart==0) // normalize Empty.
      && (forall k :: k in msgs <==> Contains(k))
    }

    // Add a single message to the end of the sequence. It gets LSN 'seqEnd', since
    // that's exclusive (points at the next empty slot).
    function Extend(m: Message) : MsgSeq
    {
      MsgSeq(
        map k | k in msgs.Keys + { seqEnd } :: if k == seqEnd then m else msgs[k],
        seqStart,
        seqEnd+1)
    }

    predicate IsEmpty() {
      seqStart == seqEnd
    }

    function ApplyToKeyMapRecursive(orig: map<Key, Message>, count: nat) : (out: map<Key, Message>)
      requires WF()
      requires count <= Len()
    {
      if count==0
      then orig
      else
        var lsn := seqStart + count - 1;
        var key := msgs[lsn].k;
        var oldMessage := orig[key];
        var newMessage := msgs[lsn];
        ApplyToKeyMapRecursive(orig, count-1)[key := Combine(oldMessage, newMessage)]
    }

    function ApplyToKeyMap(orig: map<Key, Message>) : map<Key, Message>
      requires WF()
    {
      ApplyToKeyMapRecursive(orig, Len())
    }

    function Truncate(lsn: LSN) : MsgSeq
      requires seqStart <= lsn < seqEnd
    {
      var keepVersions := lsn - seqStart;
      MsgSeq(msgs[..keepVersions], seqStart, lsn)
    }
  }

  function Empty() : MsgSeq
  {
    MsgSeq(map[], 0, 0)
  }

  function IKey(key:Key, baseValue:Value, ms: MsgSeq) : Value
    requires ms.WF()
    // Gaah look up existing message delta definitions. For
    // replacement/deletion messages, returns the value in the most-recent
    // message matching key else baseValue.

  function Condense(m0: MsgSeq, m1: MsgSeq) : (mo: Option<MsgSeq>)
    ensures mo.Some? ==> mo.value.WF()
  {
    if !m0.WF() || !m1.WF()
      then None   // Bonkers inputs
    else if m0.IsEmpty()
      then Some(m1)
    else if m1.IsEmpty()
      then Some(m0)
    else if m0.seqEnd == m1.seqStart
      then Some(MsgSeq(MapDisjointUnion(m0.msgs, m1.msgs), m0.seqStart, m1.seqEnd))
    else
      None  // Inputs don't stitch
  }

  function CondenseAll(mss: seq<MsgSeq>) : Option<MsgSeq>
  {
    if |mss|==0
    then Some(Empty())
    else
      var prefix := CondenseAll(DropLast(mss));
      if prefix.Some?
      then
        Condense(prefix.value, Last(mss))
      else
        None
  }

  function Concat(interp: Interp, ms:MsgSeq) : Interp
    requires interp.WF()
    requires ms.WF()
    requires interp.seqEnd == ms.seqStart
  {
    Interp(imap k | InDomain(k) :: IKey(k, interp.mi[k], ms), ms.seqEnd)
  }
}
