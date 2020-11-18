include "StateMachine.i.dfy"
include "Mutex.s.dfy"
include "ImplSpec.s.dfy"

module NumMutex refines AbstractMutex {
  import opened WellStateObjects

  type ConstType = nat

  linear datatype V = V(num: nat, linear r: StateObject, linear l: StateObject)

  type ValueType = V

  predicate Inv(k: ConstType, v: ValueType)
  {
    && v.r == StoneValue(k, v.num)
    && v.l == StoneLock(k)
  }
}

module DonateImpl refines DonateImplSpec {
  import opened SM = WellStateObjects
  import opened NumMutex

  method transform_init(tid: ThreadId, victim: nat,
      linear s1: StateObject,
      linear s2: StateObject)
  returns (
      linear t1: StateObject)
  requires s1 == Ticket(tid, victim)
  requires s2 == StoneLock(0)
  ensures t1 == ThreadPos(tid, 0, victim)
  {
    t1 := transform_2_1(s1, s2, ThreadPos(tid, 0, victim));
  }

  method transform_advance(
      tid: ThreadId, i: nat, victim: nat, v: nat,
      linear s1: StateObject,
      linear s2: StateObject,
      linear s3: StateObject)
  returns (
      linear t1: StateObject,
      linear t2: StateObject,
      linear t3: StateObject)
  requires v != victim
  requires i+1 < len()
  requires s1 == ThreadPos(tid, i, victim)
  requires s2 == StoneLock(i+1)
  requires s3 == StoneValue(i, v)
  ensures t1 == ThreadPos(tid, i+1, victim)
  ensures t2 == StoneLock(i)
  ensures t3 == StoneValue(i, v)
  {
    t1, t2, t3 := transform_3_3(s1, s2, s3,
      ThreadPos(tid, i+1, victim),
      StoneLock(i),
      StoneValue(i, v));
  }

  method transform_fail(
      tid: ThreadId, victim: nat, v: nat,
      linear s1: StateObject,
      linear s2: StateObject)
  returns (
      linear t1: StateObject,
      linear t2: StateObject,
      linear t3: StateObject)
  requires v != victim
  requires s1 == ThreadPos(tid, len()-1, victim)
  requires s2 == StoneValue(len()-1, v)
  ensures t1 == Stub(tid, None)
  ensures t2 == StoneLock(len()-1)
  ensures t3 == StoneValue(len()-1, v)
  {
    t1, t2, t3 := transform_2_3(s1, s2,
        Stub(tid, None),
        StoneLock(len()-1),
        StoneValue(len()-1, v));
  }

  method transform_finish(
      tid: ThreadId, i: nat, victim: nat,
      linear s1: StateObject,
      linear s2: StateObject)
  returns (
      linear t1: StateObject,
      linear t2: StateObject,
      linear t3: StateObject)
  requires s1 == ThreadPos(tid, i, victim)
  requires s2 == StoneValue(i, victim)
  ensures t1 == Stub(tid, Some(i))
  ensures t2 == StoneLock(i)
  ensures t3 == StoneValue(i, victim+1)
  {
    t1, t2, t3 := transform_2_3(s1, s2,
        Stub(tid, Some(i)),
        StoneLock(i),
        StoneValue(i, victim+1));
  }

  function method global_seq() : (res : seq<Mutex>)
  ensures |res| == len()
  ensures forall i | 0 <= i < |res| :: res[i].constant() == i

  method constructo()
  returns (self: seq<Mutex>)
  ensures Inv(global_seq)

  method donate(
    self: seq<Mutex>,
    victim: nat, linear ticket: StateObject)
  requires Inv(global_seq)
  returns (outidx: Option<nat>, linear stub: StateObject)
  {
    linear var entry0 := acquire(global_seq()[0]);
    linear var V(num, r, l) := entry0;

    var tid := ticket.tid;
    linear var tstate := transform_init(tid, victim, ticket, l);

    var i := 0;

    var done := false;

    while i < len() - 1 && num != victim
    invariant 0 <= i < len()
    invariant tstate.ThreadPos?
    invariant tstate.tid == tid
    invariant tstate.n == i
    invariant tstate.victim == victim
    invariant r == StoneValue(i, num)
    decreases len() - i
    {
      linear var entry := acquire(global_seq()[i+1]);
      linear var V(num', r', l') := entry;
  
      tstate, l, r := transform_advance(tid, i, victim, num,
          tstate, l', r);

      release(global_seq()[i], V(num, r, l));

      r := r';
      i := i + 1;
      num := num';
    }

    if num == victim {
      stub, l, r := transform_finish(tid, i, victim, tstate, r);

      num := num + 1;

      release(global_seq()[i], V(num, r, l));

      outidx := Some(i);
    } else {
      stub, l, r := transform_fail(tid, victim, num,
          tstate, r);

      release(global_seq()[i], V(num, r, l));

      outidx := None;
    }

    assert stub == donate_stub(tid, outidx);
  }
}
