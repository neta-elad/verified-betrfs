// Copyright 2018-2021 VMware, Inc., Microsoft Inc., Carnegie Mellon University, ETH Zurich, and University of Washington
// SPDX-License-Identifier: BSD-2-Clause

include "PivotBetree.i.dfy"
include "PagedBetreeRefinement.i.dfy"

module PivotBetreeRefinement
{
  import opened Options
  import opened KeyType
  import opened StampedMod
  import TotalKMMapMod
  import opened ValueMessage
  import opened MsgHistoryMod
  import opened LSNMod
  import opened Sequences
  import opened Buffers
  import opened MemtableMod
  import opened Upperbounded_Lexicographic_Byte_Order_Impl
  import opened Upperbounded_Lexicographic_Byte_Order_Impl.Ord
  import opened BoundedPivotsLib
  import opened DomainMod
  import opened PivotBetree
  import PagedBetree
  import PagedBetreeRefinement

  function IChildren(node: BetreeNode) : PagedBetree.ChildMap
    requires node.WF()
    requires node.BetreeNode?
    decreases node, 0
  {
    PagedBetree.ChildMap(imap key | AnyKey(key) ::
      assert WFChildren(node.children); // trigger
      if key in node.KeySet() then INode(node.Child(key)) else PagedBetree.Nil)
  }

  function INode(node: BetreeNode) : (out: PagedBetree.BetreeNode)
    requires node.WF()
    ensures out.WF()
    decreases node, 1
  {
    if node.Nil?
    then PagedBetree.Nil
    else PagedBetree.BetreeNode(node.buffers, IChildren(node))
  }

  function IStampedBetree(stampedBetree: StampedBetree) : PagedBetree.StampedBetree
    requires stampedBetree.value.WF()
  {
    Stamped(INode(stampedBetree.value), stampedBetree.seqEnd)
  }

  function ILbl(lbl: TransitionLabel) : PagedBetree.TransitionLabel
  {
    match lbl
      case QueryLabel(endLsn, key, value) => PagedBetree.QueryLabel(endLsn, key, value)
      case PutLabel(puts) => PagedBetree.PutLabel(puts)
      case QueryEndLsnLabel(endLsn) => PagedBetree.QueryEndLsnLabel(endLsn)
      case FreezeAsLabel(stampedBetree) => PagedBetree.FreezeAsLabel(
        if stampedBetree.value.WF()
        then IStampedBetree(stampedBetree)
        else PagedBetree.EmptyImage())
      case InternalLabel() => PagedBetree.InternalLabel()
  }

  function I(v: Variables) : PagedBetree.Variables
    requires v.WF()
  {
    PagedBetree.Variables(v.memtable, INode(v.root))
  }

  predicate Inv(v: Variables)
  {
    && v.WF()
    && (v.root.BetreeNode? ==> v.root.MyDomain() == TotalDomain())
  }

  lemma INodeWF(node: BetreeNode)
    requires node.WF()
    ensures INode(node).WF()
  {
    if node.BetreeNode? {
      forall k | AnyKey(k) ensures INode(node).children.mapp[k].WF() {
        if k in node.KeySet() {
          INodeWF(node.Child(k));
        }
      }
    }
  }

  lemma InvNext(v: Variables, v': Variables, lbl: TransitionLabel)
    requires Inv(v)
    requires Next(v, v', lbl)
    ensures Inv(v')
  {
    if v'.root.BetreeNode? {
      var step :| NextStep(v, v', lbl, step);
      if step.InternalSplitStep? {
        SubstitutePreservesWF(step.path, step.path.Target().SplitParent(step.request));
      } else if step.InternalFlushStep? {
        SubstitutePreservesWF(step.path, step.path.Target().Flush(step.childIdx));
      } else if step.InternalCompactStep? {
        var compactedNode := CompactedNode(step.path.Target(), step.compactedBuffers);
        SubstitutePreservesWF(step.path, compactedNode);
      }
    }
    assert v'.root.WF();  // trigger
  }

  function Routing(path: Path) : (out: seq<iset<Key>>) 
    requires path.Valid()
    decreases path.depth
  {
    if path.depth == 0 
      then [] 
      else 
        var keys := PivotTableBucketKeySet(path.node.pivotTable, Route(path.node.pivotTable, path.key));
        [keys] + Routing(path.Subpath())
  }

  function IPath(path: Path) : (out: PagedBetree.Path)
    requires path.Valid()
  {
    PagedBetree.Path(INode(path.node), path.key, Routing(path))
  }

  lemma SubpathCommutesWithIPath(path: Path) 
    requires path.Valid()
    requires 0 < path.depth
    ensures IPath(path.Subpath()) == IPath(path).Subpath()
  {
    calc {  // trigger
        IPath(Path(path.node.Child(path.key), path.key, path.depth-1));
        PagedBetree.Path(INode(path.node), path.key, Routing(path)).Subpath();
      }
  }

  lemma IPathValid(path: Path) 
    requires path.Valid()
    ensures IPath(path).Valid()
    decreases path.depth
  {
    if 0 < path.depth {
      SubpathCommutesWithIPath(path);
      IPathValid(path.Subpath());
      ChildCommutesWithI(path.node, path.key);
    }
  }

  function IReceiptLine(line: QueryReceiptLine) : PagedBetree.QueryReceiptLine
    requires line.WF()
  {
    PagedBetree.QueryReceiptLine(INode(line.node), line.result)
  }

  function IReceipt(receipt: QueryReceipt) : PagedBetree.QueryReceipt
    requires receipt.Valid()
  {
    PagedBetree.QueryReceipt(receipt.key, INode(receipt.root),
      seq(|receipt.lines|, i requires 0<=i<|receipt.lines| => IReceiptLine(receipt.lines[i])))
  }

  function SplitChildKeys(step: Step) : iset<Key>
    requires step.WF()
    requires step.InternalSplitStep?
    requires step.path.Valid()
  {
    step.path.Target().DomainRoutedToChild(step.request.childIdx).KeySet()
  }

  function SplitLeftKeys(step: Step) : iset<Key>
    requires step.WF()
    requires step.InternalSplitStep?
    requires step.path.Valid()
    requires step.path.Target().CanSplitParent(step.request)
  {
    iset key | key in SplitChildKeys(step) && lt(Element(key), Element(step.SplitKey()))
  }

  function IStep(step: Step) : (out: PagedBetree.Step)
    requires step.WF()
    ensures out.WF()
  {
    match step {
      case QueryStep(receipt) => PagedBetree.QueryStep(IReceipt(receipt))
      case PutStep() => PagedBetree.PutStep()
      case QueryEndLsnStep() => PagedBetree.QueryEndLsnStep()
      case FreezeAsStep() => PagedBetree.FreezeAsStep()
      case InternalGrowStep() => PagedBetree.InternalGrowStep()
      case InternalSplitStep(path, request) =>
          IPathValid(path);
          var leftKeys := SplitLeftKeys(step);
          var rightKeys := SplitChildKeys(step) - leftKeys;
          PagedBetree.InternalSplitStep(IPath(path), leftKeys, rightKeys)
      case InternalFlushStep(path, childIdx) =>
        IPathValid(path);
        PagedBetree.InternalFlushStep(IPath(path), path.Target().DomainRoutedToChild(childIdx).KeySet())
      case InternalFlushMemtableStep() => PagedBetree.InternalFlushMemtableStep()
      case InternalCompactStep(path, compactedBuffers) =>
        IPathValid(path);
        var out := PagedBetree.InternalCompactStep(IPath(path), compactedBuffers);
        TargetCommutesWithI(path);
        out
      case InternalNoOpStep() => PagedBetree.InternalNoOpStep()
    }
  }

  lemma InitRefines(v: Variables, stampedBetree: StampedBetree)
    requires Init(v, stampedBetree)
    ensures PagedBetree.Init(I(v), IStampedBetree(stampedBetree))
  {
    INodeWF(stampedBetree.value);
  }

  lemma ChildCommutesWithI(node: BetreeNode, key: Key)
    requires node.WF()
    requires node.BetreeNode?
    requires node.KeyInDomain(key)
    ensures node.Child(key).WF()  // trigger for precondition below
    ensures INode(node).Child(key) == INode(node.Child(key))
  {}

  lemma ValidReceiptRefines(receipt: QueryReceipt)
    requires receipt.Valid()
    ensures IReceipt(receipt).Valid()
  {
    var ir := IReceipt(receipt);
    forall i:nat | i < |ir.lines| ensures ir.lines[i].WF() {
      INodeWF(receipt.lines[i].node);
    }
    forall i:nat | i < |ir.lines| - 1 ensures ir.ChildLinkedAt(i) {
      assert receipt.ChildLinkedAt(i);  // trigger
      ChildCommutesWithI(receipt.lines[i].node, receipt.key);
    }
    forall i:nat | i < |ir.lines| - 1 ensures ir.ResultLinkedAt(i) {
      assert receipt.ResultLinkedAt(i);  // trigger
    }
  }

  lemma AllKeysInTotalDomain(key: Key)
    ensures key in TotalDomain().KeySet()
    ensures TotalDomain().Contains(key)
  {
    SmallestElementLte(Element(key));
  }

  lemma InternalGrowStepRefines(v: Variables, v': Variables, lbl: TransitionLabel, step: Step)
    requires Inv(v)
    requires NextStep(v, v', lbl, step)
    requires step.InternalGrowStep?
    ensures v'.WF()
    ensures PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step))
  {
    INodeWF(v.root);
    INodeWF(v'.root);
    assert I(v').root.children.mapp.Keys == AllKeys();  // trigger
    forall key:Key | AnyKey(key)
      ensures I(v').root.Child(key)
          == PagedBetree.ConstantChildMap(I(v).root).mapp[key] {
      AllKeysInTotalDomain(key);
      ChildCommutesWithI(v'.root, key);
    }
  }

  lemma SubstitutePreservesWF(path: Path, target': BetreeNode)
    requires path.Valid()
    requires path.ValidReplacement(target')
    ensures path.Substitute(target').WF()
  {}

  // Substitution followed by interpretation is the same as interpretation
  // followed by paged-level substitution.
  lemma SubstitutionRefines(path: Path, target': BetreeNode)
    requires path.Valid()
    requires path.ValidReplacement(target')
    ensures path.Substitute(target').WF()
    ensures IPath(path).Valid()
    ensures INode(target').WF();
    ensures INode(path.Substitute(target')) == IPath(path).Substitute(INode(target'));
    decreases path.depth;
  {
    IPathValid(path);
    SubstitutePreservesWF(path, target');
    IPathValid(path);
    INodeWF(target');
    if path.depth==0 {
      assert INode(path.Substitute(target')) == IPath(path).Substitute(INode(target'));
    } else {
      SubstitutionRefines(path.Subpath(), target');
      forall key ensures
        IChildren(path.Substitute(target')).mapp[key]
        == IPath(path).ReplacedChildren(INode(target')).mapp[key] 
      {
        if key in path.node.KeySet() {
          if Route(path.node.pivotTable, path.key) == Route(path.node.pivotTable, key) {
            var replacedChild := IPath(path).Subpath().Substitute(INode(target'));
            assert replacedChild == IPath(path).ReplacedChildren(INode(target')).mapp[key] by {
              IPath(path).reveal_ReplacedChildren();  // protected in by clause to avoid timeout
            }
            SubpathCommutesWithIPath(path);
          } else {
            assert IPath(path).node.Child(key) == IPath(path).ReplacedChildren(INode(target')).mapp[key] by {
              IPath(path).reveal_ReplacedChildren();  // protected in by clause to avoid timeout
            }
            ChildCommutesWithI(path.node, key);
          }
        } else {
          assert PagedBetree.Nil == INode(path.node).Child(key);  // trigger
          assert IPath(path).node.Child(key) == IPath(path).ReplacedChildren(INode(target')).mapp[key] by {
            IPath(path).reveal_ReplacedChildren();  // protected in by clause to avoid timeout
          }
        }
      }
      assert INode(path.Substitute(target')) == IPath(path).Substitute(INode(target'));  // trigger
    }
  }

  lemma TargetCommutesWithI(path: Path) 
    requires path.Valid()
    ensures IPath(path).Valid()  // prereq
    ensures IPath(path).Target() == INode(path.Target())
    decreases path.depth
  {
    IPathValid(path);
    if 0 < path.depth {
      TargetCommutesWithI(path.Subpath());
      SubpathCommutesWithIPath(path);
      assert IPath(path).Target() == INode(path.Target());
    }
  }

  lemma SplitCommutesWithILeft(step: Step, key: Key)
    requires step.InternalSplitStep?
    requires step.WF()
    requires key in SplitLeftKeys(step)
    requires key in step.path.Target().KeySet()
    ensures
      var leftKeys := SplitLeftKeys(step);
      var t := step.path.Target();
      INode(t).Split(leftKeys, SplitChildKeys(step) - leftKeys).Child(key) == IChildren(t.SplitParent(step.request)).mapp[key];
  {
    var t := step.path.Target();
    var childDom := t.DomainRoutedToChild(step.request.childIdx);
    var leftDom := Domain(childDom.start, Element(step.SplitKey()));
    var leftKeys := SplitLeftKeys(step);
    var rightKeys := SplitChildKeys(step) - SplitLeftKeys(step);

    assert leftDom.KeySet() == leftKeys by {
      Keyspace.reveal_IsStrictlySorted();
      Keyspace.lteTransitiveForall();
    }
    if step.request.SplitLeaf? {
      assert INode(t.Child(key)).FilterBuffersAndChildren(leftDom.KeySet()).children == INode(t.Child(key).SplitLeaf(step.request.splitKey).0).children;  // trigger seq extensionality
    } else {
      assert INode(t.Child(key)).FilterBuffersAndChildren(leftDom.KeySet()).children == INode(t.Child(key).SplitIndex(step.request.childPivotIdx).0).children;  // trigger seq extensionality
    }
  }

  lemma SplitCommutesWithIRight(step: Step, key: Key)
    requires step.InternalSplitStep?
    requires step.WF()
    requires key in SplitChildKeys(step) - SplitLeftKeys(step)
    requires key in step.path.Target().KeySet()
    ensures
      var leftKeys := SplitLeftKeys(step);
      var t := step.path.Target();
      INode(t).Split(leftKeys, SplitChildKeys(step) - leftKeys).Child(key) == IChildren(t.SplitParent(step.request)).mapp[key];
  {
    var t := step.path.Target();
    var childDom := t.DomainRoutedToChild(step.request.childIdx);
    var rightDom := Domain(Element(step.SplitKey()), childDom.end);
    var leftKeys := SplitLeftKeys(step);
    var rightKeys := SplitChildKeys(step) - leftKeys;

    assert rightDom.KeySet() == rightKeys by {
      Keyspace.reveal_IsStrictlySorted();
      Keyspace.lteTransitiveForall();
    }
    if step.request.SplitLeaf? {
      //assert INode(t.Child(key)).FilterBuffersAndChildren(rightDom.KeySet()).children == INode(t.Child(key).SplitLeaf(step.request.splitKey).1).children;  // trigger seq extensionality
    } else {
      assert INode(t.Child(key)).FilterBuffersAndChildren(rightDom.KeySet()).children == INode(t.Child(key).SplitIndex(step.request.childPivotIdx).1).children;  // trigger seq extensionality
    }
  }

  lemma SplitCommutesWithI(step: Step) 
    requires step.InternalSplitStep?
    requires step.WF()
    ensures INode(step.path.Target()).Split(SplitLeftKeys(step), SplitChildKeys(step) - SplitLeftKeys(step)) == INode(step.path.Target().SplitParent(step.request))
  {
    var leftKeys := SplitLeftKeys(step);
    var rightKeys := SplitChildKeys(step) - SplitLeftKeys(step);
    var t := step.path.Target();

    forall key | AnyKey(key)
    ensures INode(t).Split(leftKeys, rightKeys).Child(key)
      == IChildren(t.SplitParent(step.request)).mapp[key] 
    {
      if key in t.KeySet() {
        if key in leftKeys {
          SplitCommutesWithILeft(step, key);
        } else if key in rightKeys {
          SplitCommutesWithIRight(step, key);
        }
      }
    }
    assert PagedBetree.BetreeNode(t.buffers, IChildren(t)).Split(leftKeys, rightKeys).children.mapp.Keys
        == IChildren(t.SplitParent(step.request)).mapp.Keys;  // triggers extensionality
  }

  lemma InternalSplitStepRefines(v: Variables, v': Variables, lbl: TransitionLabel, step: Step)
    requires Inv(v)
    requires NextStep(v, v', lbl, step)
    requires step.InternalSplitStep?
    ensures v'.WF()
    ensures PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step))
  {
    INodeWF(v.root);
    INodeWF(step.path.Target());
    InvNext(v, v', lbl); //assert v'.WF();
    INodeWF(v'.root);
    IPathValid(step.path); //assert IPath(step.path).Valid();
    TargetCommutesWithI(step.path);
    SplitCommutesWithI(step);
    SubstitutionRefines(step.path, step.path.Target().SplitParent(step.request));
  }

  lemma PromoteCommutesWithI(node: BetreeNode, domain: Domain)  
    requires node.WF()
    requires domain.WF()
    requires domain.Domain?
    ensures INode(node.Promote(domain)) == INode(node).Promote()
  {
    assert INode(node.Promote(domain)) == INode(node).Promote();  // trigger
  }

  lemma PushBufferCommutesWithI(node: BetreeNode, buffers: BufferStack) 
    requires node.WF()
    requires node.BetreeNode?
    ensures INode(node.PushBufferStack(buffers)) == INode(node).PushBufferStack(buffers)
  {
    assert INode(node.PushBufferStack(buffers)).buffers == INode(node).PushBufferStack(buffers).buffers;  // trigger
  }

  // todo: this is duplicated in Journal/LinkedJournalRefinement
  lemma CommuteTransitivity<L,H>(I: L->H, f: L->L, F: H->H, g: L->L, G: H->H)
    requires forall x :: I(f(x))==F(I(x))
    requires forall x :: I(g(x))==G(I(x))
    ensures forall x :: I(g(f(x)))==G(F(I(x)))
  {
    // See Tony's phone cam picture of the proof that we wrote on the whiteboard
    // but which dafny doesn't need; eyeroll
  }
  
  // TODO(tony): a much easier proof would be to condition on the nullity of node to factor out Promote()
  lemma PromoteComposedWithPushCommutes(node: BetreeNode, promoteDomain: Domain, buffers: BufferStack)  
    requires node.WF()
    requires promoteDomain.WF()
    requires promoteDomain.Domain?
    ensures INode(node.Promote(promoteDomain).PushBufferStack(buffers)) 
        == INode(node).Promote().PushBufferStack(buffers);
  {
    EmptyDomain.reveal_SaneKeys();
    var dummy := EmptyRoot(promoteDomain);  // using promoteDomain as placeholder. It doesn't matter what domain is used
    var idummy := PagedBetree.EmptyRoot();
    var i := (n: BetreeNode) => if n.WF() && n.BetreeNode? then INode(n) else idummy;
    var f := (n: BetreeNode) => if n.WF() then n.Promote(promoteDomain) else dummy;
    var g := (n: BetreeNode) => if n.WF() && n.BetreeNode? then n.PushBufferStack(buffers) else dummy.PushBufferStack(buffers);  // this is a clever trick to use dummy.PushBufferStack(buffers), so that the commutativity aligns
    var F := (pn: PagedBetree.BetreeNode) => if pn.WF() then pn.Promote() else idummy;
    var G := (pn: PagedBetree.BetreeNode) => if pn.WF() && pn.BetreeNode? then pn.PushBufferStack(buffers) else idummy;

    forall n ensures i(f(n)) == F(i(n))
    {
      if n.WF() {
        PromoteCommutesWithI(n, promoteDomain);
      } else {
        PushBufferCommutesWithI(EmptyRoot(promoteDomain), buffers); 
        assert IChildren(EmptyRoot(promoteDomain)) == PagedBetree.ConstantChildMap(PagedBetree.Nil);  // trigger
      }
    }
    assert INode(f(node)) == F(INode(node));  // trigger
    forall n ensures i(g(n)) == G(i(n))
    {
      if n.WF() && n.BetreeNode? {
        calc {
          INode(n.PushBufferStack(buffers));
          { PushBufferCommutesWithI(n, buffers); }
          INode(n).PushBufferStack(buffers);
        }
      } else {
        PushBufferCommutesWithI(EmptyRoot(promoteDomain), buffers);
        assert IChildren(EmptyRoot(promoteDomain)) == PagedBetree.ConstantChildMap(PagedBetree.Nil);
      }
    }
    CommuteTransitivity(i, f, F, g, G);
  }

  lemma FlushCommutesWithI(step: Step) 
    requires step.InternalFlushStep?
    requires step.WF()
    ensures INode(step.path.Target()).Flush(IStep(step).downKeys) == INode(step.path.Target().Flush(step.childIdx))
  {
    var t := step.path.Target();
    var istep := IStep(step);
    forall k | AnyKey(k) 
    ensures INode(t.Flush(step.childIdx)).Child(k) == INode(t).Flush(istep.downKeys).Child(k)
    {
      if k in istep.downKeys {
        assert t.KeyInDomain(k) by {
          Keyspace.reveal_IsSorted();
          Keyspace.lteTransitiveForall();
        }
        ChildCommutesWithI(t.Flush(step.childIdx), k);
        var newBuffers := t.buffers.ApplyFilter(t.DomainRoutedToChild(step.childIdx).KeySet());
        PromoteComposedWithPushCommutes(t.children[step.childIdx], t.DomainRoutedToChild(step.childIdx), newBuffers);
      }
    }
    assert INode(step.path.Target()).Flush(IStep(step).downKeys) == INode(step.path.Target().Flush(step.childIdx));  // trigger
  }

  lemma InternalFlushStepRefines(v: Variables, v': Variables, lbl: TransitionLabel, step: Step)
    requires Inv(v)
    requires NextStep(v, v', lbl, step)
    requires step.InternalFlushStep?
    ensures v'.WF()
    ensures PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step))
  {
    INodeWF(v.root);
    INodeWF(step.path.Target());
    InvNext(v, v', lbl); //assert v'.WF();
    INodeWF(v'.root);
    IPathValid(step.path); //assert IPath(step.path).Valid();
    TargetCommutesWithI(step.path);
    FlushCommutesWithI(step);
    SubstitutionRefines(step.path, step.path.Target().Flush(step.childIdx));
  }

  predicate EquivalentBufferCompaction(node: BetreeNode, other: BetreeNode)
  {
    && node.WF()
    && other.WF()
    && node.BetreeNode?
    && other.BetreeNode?
    && node.buffers.Equivalent(other.buffers)
    && node.pivotTable == other.pivotTable
    && node.children == other.children
  }

  lemma BufferCompactionRefines(node: BetreeNode, other: BetreeNode)
    requires EquivalentBufferCompaction(node, other)
    ensures PagedBetreeRefinement.EquivalentBufferCompaction(INode(node), INode(other))
  {}

  lemma InternalCompactStepRefines(v: Variables, v': Variables, lbl: TransitionLabel, step: Step)
    requires Inv(v)
    requires NextStep(v, v', lbl, step)
    requires step.InternalCompactStep?
    ensures v'.WF()
    ensures PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step))
  {
    INodeWF(v.root);
    INodeWF(step.path.Target());
    InvNext(v, v', lbl); //assert v'.WF();
    INodeWF(v'.root);
    IPathValid(step.path); //assert IPath(step.path).Valid();
    var compactedNode := CompactedNode(step.path.Target(), step.compactedBuffers);
    SubstitutionRefines(step.path, compactedNode);
    BufferCompactionRefines(step.path.Target(), compactedNode);
    TargetCommutesWithI(step.path);
  }

  lemma FreezeAsRefines(v: Variables, v': Variables, lbl: TransitionLabel, step: Step)
    requires Inv(v)
    requires NextStep(v, v', lbl, step)
    requires step.FreezeAsStep?
    ensures v'.WF()
    ensures PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step))
  {
    assert INode(PushMemtable(v.root, v.memtable).value) == INode(v.root).PushMemtable(v.memtable).value;
  }

  lemma InternalFlushMemtableStepRefines(v: Variables, v': Variables, lbl: TransitionLabel, step: Step)
    requires Inv(v)
    requires NextStep(v, v', lbl, step)
    requires step.InternalFlushMemtableStep?
    ensures v'.WF()
    ensures PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step))
  {
    assert INode(PushMemtable(v.root, v.memtable).value) == INode(v.root).PushMemtable(v.memtable).value;
  }

  lemma NextRefines(v: Variables, v': Variables, lbl: TransitionLabel)
    requires Inv(v)
    requires Next(v, v', lbl)
    ensures v'.WF()
    ensures PagedBetree.Next(I(v), I(v'), ILbl(lbl))
  {
    InvNext(v, v', lbl);
    var step: Step :| NextStep(v, v', lbl, step);
    match step {
      case QueryStep(receipt) => {
        ValidReceiptRefines(step.receipt);
        assert PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step)); // trigger
      }
      case PutStep() => {
        assert PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step));
      }
      case QueryEndLsnStep() => {
        assert PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step));
      }
      case FreezeAsStep() => {
        INodeWF(v.root);
        FreezeAsRefines(v, v', lbl, step);
        assert PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step)); 
      }
      case InternalGrowStep() => {
        InternalGrowStepRefines(v, v', lbl, step);
      }
      case InternalSplitStep(_, _) => {
        InternalSplitStepRefines(v, v', lbl, step);
        assert PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step));
      }
      case InternalFlushStep(_, _) => {
        InternalFlushStepRefines(v, v', lbl, step);
        assert PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step));
      }
      case InternalFlushMemtableStep() => {
        InternalFlushMemtableStepRefines(v, v', lbl, step);
        assert PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step));
      }
      case InternalCompactStep(_, _) => {
        InternalCompactStepRefines(v, v', lbl, step);
        assert PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step));
      }
      case InternalNoOpStep() => 
         assert PagedBetree.NextStep(I(v), I(v'), ILbl(lbl), IStep(step));
    }
  }
}
