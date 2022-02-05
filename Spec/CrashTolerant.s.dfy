include "../lib/Base/SequencesLite.s.dfy"
include "../lib/Base/MapRemove.s.dfy"
include "Async.s.dfy"

// Collect the entire history of possible snapshots, with a pointer to the persistent one.
// Sync requests begin at the head of the list (the ephemeral state).
// Once the persistent pointer reaches that same index, the sync may be acknowledged as complete.
// We don't do anything with old snapshots (indeed, no implementation could); I just wrote it
// this way for greatest simplicity.
module CrashTolerantMod(atomic: AtomicStateMachineMod) {
  import opened MapRemove_s
  import opened SequencesLite // Last, DropLast
  import async = AsyncMod(atomic) // Crash tolerance adds asynchrony whether you like it or not.

  type SyncReqId = nat
  datatype Version =
    | Forgotten
      // Keeping placeholders for LSNs before stableIdx makes it more
      // obvious how the versions sequence evolves. To avoid the need
      // for a bunch of ghost history complexity, we Forget the values
      // at those LSNs so the implementation has an easy time constructing
      // the interpretation.
    | Version(asyncState: async.PersistentState)

  datatype Variables = Variables(
    versions: seq<Version>,
    asyncEphemeral: async.EphemeralState,

    // Request id points at the number of LSNs that must be persisted.
    // So if the client ReqSyncs after 3 writes (seqEnd==3), the value
    // in the map is 3.
    syncRequests: map<SyncReqId, nat>,

    // TODO(jonh): reorder stableIdx aftern versions
    // The index of the last persistent version. Notice that, since we
    // never delete versions, that index is also the count of writes
    // and thus also the "NextLSN" value when that version was created.
    stableIdx: nat)
  {
    predicate WF() {
      // There is always some persistent version, even if just a view of the
      // mkfs state
      && 0 < |versions|

      // All versions beginning with the stableIdx aren't truncated,
      // so that crashing can't take us to a Forgotten version.
      && (forall i | stableIdx<=i<|versions| :: versions[i].Version?)

      && stableIdx < |versions|
    }
  }


  function InitState() : Variables {
    Variables([Version(async.InitPersistentState())], async.InitEphemeralState(), map[], 0)
  }

  // This isn't a transition, just a partial action for readibility.
  predicate OptionallyAppendVersion(versions: seq<Version>, versions': seq<Version>)
  {
    // new versions list is either some new thing appended to the old one,
    || (0<|versions'| && DropLast(versions') == versions)
    // or unchanged. We allow unchanged in the trusted spec so that
    // implementations don't have to account for number of read-only (query) ops.
    || versions' == versions
  }

  predicate Operate(v: Variables, v': Variables, op: async.UIOp)
  {
    // let nondeterminism of v' choose these values
    // (Imagine they're coming in from JNF via a skolemized exists -- but that makes
    // proofs need exists-witnesses.)
    && var newVersions := v'.versions;
    && var newAsyncEphemeral := v'.asyncEphemeral;

    && v.WF()
    && v'.WF()
    && OptionallyAppendVersion(v.versions, newVersions)
    && async.NextStep(
        async.Variables(Last(v.versions).asyncState, v.asyncEphemeral),
        async.Variables(Last(newVersions).asyncState, newAsyncEphemeral),
        op)
    && v' == v.(
        versions := newVersions,
        asyncEphemeral := newAsyncEphemeral
      )
  }

  // Uh oh, anything not flushed (past stableIdx) is gone. But you still get a consistent version
  // at least as new as every version synced before the crash.
  predicate Crash(v: Variables, v': Variables)
  {
    && v.WF()
    && v' == v.(
        versions := v.versions[..v.stableIdx+1],
      // Crash forgets ephemeral stuff -- requests and syncRequests submitted but not answered.
        asyncEphemeral := async.InitEphemeralState(),
        syncRequests := map[]
      )
  }

  // The Sync *action* causes some LSNs to become persistent, which may enable
  // the system to reply to some sync *requests*.
  // some sync *requests* to be replied to.
  // The implementation may push some stuff out to the disk without getting
  // all the way up to date with the ephemeral state.
  predicate Sync(v: Variables, v': Variables)
  {
    // let nondeterminism of v' choose this value
    // This wouldn't take so much explaining if we just exists newStableIdx, but then
    // it's harder to use and muddies up the UIOp skolem. Sorry.
    && var newStableIdx := v'.stableIdx;

    && v.WF()
    && v.stableIdx <= newStableIdx < |v.versions|
    && v' == v.(
        // Commit forgets old versions.
        versions := seq(|v.versions|, i requires 0<=i<|v.versions| =>
          if i < newStableIdx then Forgotten else v.versions[i]),
        stableIdx := newStableIdx)
  }

  // sync api contract to the end user
  // NB it's a very little bit funky. For all normal requests, three atomic
  // actions occur: the request arrives, it's executed (serialized), the reply
  // is delivered. For Syncs, we don't bother explicitly recording the serialization
  // point; ReplySync just gets enabled at some point before it occurs. Sorry?
  predicate ReqSync(v: Variables, v': Variables, syncReqId: SyncReqId)
  {
    && v.WF()
    && syncReqId !in v.syncRequests // don't want to talk about weird behavior with duplicate ids
    && v' == v.(syncRequests := v.syncRequests[syncReqId := |v.versions|-1])
  }

  // When your syncReqId gets flushed all the way to the persistent version slot,
  // the sync is complete and that version is stable.
  predicate ReplySync(v: Variables, v': Variables, syncReqId: SyncReqId)
  {
    && v.WF()
    && syncReqId in v.syncRequests
    && v.syncRequests[syncReqId] <= v.stableIdx
    && v' == v.(syncRequests := MapRemove1(v.syncRequests, syncReqId))
  }

  datatype UIOp =
    | OperateOp(baseOp: async.UIOp)
    | CrashOp
    | SyncOp
    | ReqSyncOp(syncReqId: SyncReqId)
    | ReplySyncOp(syncReqId: SyncReqId)
    | NoopOp

  predicate NextStep(v: Variables, v': Variables, uiop: UIOp)
  {
    match uiop {
      case OperateOp(baseOp) => Operate(v, v', baseOp)
      case CrashOp => Crash(v, v')
      case SyncOp() => Sync(v, v')
      case ReqSyncOp(syncReqId) => ReqSync(v, v', syncReqId)
      case ReplySyncOp(syncReqId) => ReplySync(v, v', syncReqId)
      case NoopOp => v' == v
    }
  }

  predicate Next(v: Variables, v': Variables, uiop: UIOp)
  {
    exists uiop :: NextStep(v, v', uiop)
  }
}
