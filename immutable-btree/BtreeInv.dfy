include "../lib/total_order.dfy"
include "../lib/map_utils.dfy"
include "../lib/mathematics.dfy"
include "../lib/sequences.dfy"
include "BtreeSpec.dfy"

abstract module BtreeInv {
  import Keyspace = Bounded_Total_Order
  import opened Sequences
  import opened BtreeSpec

  predicate CantEquivocate<Value(!new)>(tree: Node<Value>)
  {
    forall key, value, value', lookup: Lookup<Value>, lookup': Lookup<Value> ::
      && IsSatisfyingLookup(tree, key, value, lookup)
      && IsSatisfyingLookup(tree, key, value', lookup') ==>
      value == value'
  }


  predicate Invariant(k: Constants, s: Variables) {
    && WFTree(s.root)
    && CantEquivocate(s.root)
  }


  predicate PreservesLookups<Value(!new)>(tree: Node, newtree: Node)
  {
    forall lookup, key, value :: IsSatisfyingLookup(tree, key, value, lookup) ==>
    exists lookup' :: IsSatisfyingLookup(newtree, key, value, lookup')
  }

  predicate PreservesLookupsExcept<Value(!new)>(tree: Node, newtree: Node, exceptQuery: Key)
  {
    forall lookup, key, value :: key != exceptQuery && IsSatisfyingLookup(tree, key, value, lookup) ==>
    exists lookup' :: IsSatisfyingLookup(newtree, key, value, lookup')
  }

  lemma SatisfyingLookupsNest<Value(!new)>(tree: Node, key: Key, value: Value, lookup: Lookup)
    requires IsSatisfyingLookup(tree, key, value, lookup);
    requires tree.Index?;
    ensures IsSatisfyingLookup(tree.children[lookup[0].slot],
                               key, value,
                               lookup[1..]);
  {
  }

  lemma BoundsNest(tree: Node, child: int)
    requires WFTree(tree);
    requires tree.Index?;
    requires 0 <= child < |tree.children|;
    ensures Keyspace.lte(tree.lb, tree.children[child].lb);
    ensures Keyspace.lte(tree.children[child].ub, tree.ub);
  {
    if child == 0 {
    } else {
      assert Keyspace.lte(tree.lb, tree.pivots[child-1]);
    }
  }
  
  lemma SatisfyingLookupsAllBoundsContainQuery<Value>(tree: Node, key: Key, value: Value, lookup: Lookup)
    requires WFTree(tree)
    requires IsSatisfyingLookup(tree, key, value, lookup);
    ensures Keyspace.lte(lookup[0].node.lb, key);
    ensures Keyspace.lt(key, lookup[0].node.ub);
    decreases tree;
  {
    if tree.Leaf? {
    } else {
      SatisfyingLookupsAllBoundsContainQuery(tree.children[lookup[0].slot], key, value, lookup[1..]);
      BoundsNest(tree, lookup[0].slot);
    }
  }

  lemma SatisfyingLookupSlotIsLargestLte<Value>(tree: Node, key: Key, value: Value, lookup: Lookup)
    requires WFTree(tree)
    requires IsSatisfyingLookup(tree, key, value, lookup);
    requires tree.Index?;
    ensures lookup[0].slot == Keyspace.LargestLte(tree.pivots, key) + 1;
  {
    var pos := Keyspace.LargestLte(tree.pivots, key) + 1;
    if lookup[0].slot < pos {
      SatisfyingLookupsAllBoundsContainQuery(lookup[1].node, key, value, lookup[1..]);
      assert false;
    } else if lookup[0].slot > pos {
      SatisfyingLookupsAllBoundsContainQuery(lookup[1].node, key, value, lookup[1..]);
      assert Keyspace.lte(tree.pivots[lookup[0].slot-1], lookup[1].node.lb);
      assert false;
    }
  }

  lemma PutIsCorrect<Value>(tree: Node, newtree: Node, key: Key, value: Value)
  requires WFTree(tree)
  requires CantEquivocate(tree)
  requires PutTransform(tree, newtree, key, value);
  ensures PreservesLookupsExcept(tree, newtree, key);
  ensures PreservesLookupsExcept(newtree, tree, key);
  ensures exists lookup :: IsSatisfyingLookup(newtree, key, value, lookup);
  ensures CantEquivocate(newtree)
  decreases tree
  {
    reveal_NoDupes();
    if tree.Leaf? {
      var pos := Keyspace.LargestLte(tree.keys, key);
      if pos >= 0 && key == tree.keys[pos] {
        assert newtree == Leaf(tree.keys, tree.values[pos := value], tree.lb, tree.ub);
        
        forall lookup: Lookup, key', value'
          | key' != key && IsSatisfyingLookup(tree, key', value', lookup)
          ensures exists lookup' :: IsSatisfyingLookup(newtree, key', value', lookup');
        {
          var lookup' := [Layer(newtree, lookup[0].slot)];
          assert IsSatisfyingLookup(newtree, key', value', lookup');
        }
        forall lookup': Lookup, key', value'
          | key' != key && IsSatisfyingLookup(newtree, key', value', lookup')
          ensures exists lookup :: IsSatisfyingLookup(tree, key', value', lookup);
        {
          var lookup := [Layer(tree, lookup'[0].slot)];
          assert IsSatisfyingLookup(tree, key', value', lookup);
        }

        assert IsSatisfyingLookup(newtree, key, value, [Layer(newtree, pos)]);

      } else {
        var newkeys := tree.keys[..pos+1] + [key] + tree.keys[pos+1..];
        var newvals := tree.values[..pos+1] + [value] + tree.values[pos+1..];
        assert newtree == Leaf(newkeys, newvals, tree.lb, tree.ub);
        //assert Keyspace.IsSorted(newtree.keys);
        var lookup := [Layer(newtree, pos + 1)];

        assert WFTree(newtree);
        assert IsSatisfyingLookup(newtree, key, value, lookup);
        
        forall lookup: Lookup, key', value'
          | key' != key && IsSatisfyingLookup(tree, key', value', lookup)
          ensures exists lookup' :: IsSatisfyingLookup(newtree, key', value', lookup');
        {
          if lookup[0].slot <= pos {
            var lookup' := [Layer(newtree, lookup[0].slot)];
            assert IsSatisfyingLookup(newtree, key', value', lookup');
          } else {
            var lookup' := [Layer(newtree, lookup[0].slot + 1)];
            assert IsSatisfyingLookup(newtree, key', value', lookup');
          }
        }
        forall lookup': Lookup, key', value'
          | key' != key && IsSatisfyingLookup(newtree, key', value', lookup')
          ensures exists lookup :: IsSatisfyingLookup(tree, key', value', lookup);
        {
          assert lookup'[0].slot != pos+1;
          if lookup'[0].slot <= pos {
            var lookup := [Layer(tree, lookup'[0].slot)];
            assert IsSatisfyingLookup(tree, key', value', lookup);
          } else {
            var lookup := [Layer(tree, lookup'[0].slot - 1)];
            assert IsSatisfyingLookup(tree, key', value', lookup);
          }
        }

      }
    } else {
      var pos := Keyspace.LargestLte(tree.pivots, key) + 1;

      // Before we can call Define recursively, we must prove that the child CantEquivocate.
      forall key', valueA, valueB, lookup, lookup'
      |
      && IsSatisfyingLookup(tree.children[pos], key', valueA, lookup)
      && IsSatisfyingLookup(tree.children[pos], key', valueB, lookup')
      ensures valueA == valueB;
      {
        var plookup  := [Layer(tree, pos)] + lookup;
        var plookup' := [Layer(tree, pos)] + lookup';
        assert IsSatisfyingLookup(tree, key', valueA, plookup);
        assert IsSatisfyingLookup(tree, key', valueB, plookup');
      }
      var newchild := newtree.children[pos];
      PutIsCorrect(tree.children[pos], newchild, key, value);
      assert PutTransform(tree.children[pos], newchild, key, value);
      assert newtree == Index(tree.pivots, tree.children[pos := newchild], tree.lb, tree.ub);

      // PreservesLookupsExcept proofs
      forall lookup: Lookup, key', value'
        | key' != key && IsSatisfyingLookup(tree, key', value', lookup)
        ensures exists lookup' :: IsSatisfyingLookup(newtree, key', value', lookup');
      {
        var clookup := lookup[1..];
        assert IsSatisfyingLookup(tree.children[lookup[0].slot], key', value', clookup);
        var clookup' :| IsSatisfyingLookup(newtree.children[lookup[0].slot], key', value', clookup');
        var lookup' := [Layer(newtree, lookup[0].slot)] + clookup';
        assert IsSatisfyingLookup(newtree, key', value', lookup');
      }
      forall lookup': Lookup, key', value'
        | key' != key && IsSatisfyingLookup(newtree, key', value', lookup')
        ensures exists lookup :: IsSatisfyingLookup(tree, key', value', lookup);
      {
        var clookup' := lookup'[1..];
        assert IsSatisfyingLookup(newtree.children[lookup'[0].slot], key', value', clookup');
        var clookup: Lookup<Value> :| IsSatisfyingLookup(tree.children[lookup'[0].slot], key', value', clookup);
        var lookup := [Layer(tree, lookup'[0].slot)] + clookup;
        assert IsSatisfyingLookup(tree, key', value', lookup);
      }

      // Proof that we can lookup key and get value
      ghost var clookup :| IsSatisfyingLookup(newtree.children[pos], key, value, clookup);
      ghost var lookup := [Layer(newtree, pos)] + clookup;
      assert IsSatisfyingLookup(newtree, key, value, lookup);

      // Proof that we CantEquivocate
      forall key', valueA, valueB, lookupA: Lookup, lookupB: Lookup
      |
      && IsSatisfyingLookup(newtree, key', valueA, lookupA)
      && IsSatisfyingLookup(newtree, key', valueB, lookupB)
      ensures valueA == valueB;
      {
        SatisfyingLookupSlotIsLargestLte(newtree, key', valueA, lookupA);
        SatisfyingLookupSlotIsLargestLte(newtree, key', valueB, lookupB);
        SatisfyingLookupsNest(newtree, key', valueA, lookupA);
        SatisfyingLookupsNest(newtree, key', valueB, lookupB);
      }
      assert CantEquivocate(newtree);
    }
  }

  lemma GrowLeafIsCorrect<Value>(tree: Node, newtree: Node, childrenToLeft: int)
  requires WFTree(tree);
  requires CantEquivocate(tree);
  requires tree.Leaf?
  requires GrowLeaf(tree, newtree, childrenToLeft);
  ensures PreservesLookups(tree, newtree);
  ensures PreservesLookups(newtree, tree);
  ensures CantEquivocate(newtree);
  decreases tree;
  {
  }

  lemma GrowIndexIsCorrect<Value>(tree: Node, newtree: Node, childrenToLeft: int)
  requires WFTree(tree);
  requires CantEquivocate(tree);
  requires tree.Index?
  requires GrowIndex(tree, newtree, childrenToLeft);
  ensures PreservesLookups(tree, newtree);
  ensures PreservesLookups(newtree, tree);
  ensures CantEquivocate(newtree);
  decreases tree;
  {
    var left_child := newtree.children[0];
    var right_child := newtree.children[1];

    forall lookup:Lookup<Value>, key, value' | IsSatisfyingLookup(tree, key, value', lookup)
    ensures exists lookup' :: IsSatisfyingLookup(newtree, key, value', lookup')
    {
      var original_top_layer := lookup[0];
      if (original_top_layer.slot < childrenToLeft) {
        var layer1 := Layer(newtree, 0);
        var layer2 := Layer(left_child, original_top_layer.slot);
        var lookup' := [layer1, layer2] + lookup[1 .. ];
      } else {
        var layer1 := Layer(newtree, 1);
        var layer2 := Layer(right_child, original_top_layer.slot - childrenToLeft);
        var lookup' := [layer1, layer2] + lookup[1 .. ];
        assert IsSatisfyingLookup(newtree, key, value', lookup');
      }
    }

    forall lookup:Lookup<Value>, key, value' | IsSatisfyingLookup(newtree, key, value', lookup)
    ensures exists lookup' :: IsSatisfyingLookup(tree, key, value', lookup')
    {
      var layer1 := lookup[0];
      var layer2 := lookup[1];
      if (layer1.slot == 0) {
        var layer := Layer(tree, layer2.slot);
        var lookup' := [layer] + lookup[2 .. ];
        assert IsSatisfyingLookup(tree, key, value', lookup');
      } else {
        assert layer1.slot == 1;
        var layer := Layer(tree, layer2.slot + childrenToLeft);
        var lookup' := [layer] + lookup[2 .. ];
        assert IsSatisfyingLookup(tree, key, value', lookup');
      }
    }
  }

  lemma PutPreservesInvariant<Value>(k: Constants, s: Variables, s': Variables, key: Key, value: Value)
  requires Invariant(k, s);
  requires Put(k, s, s', key, value);
  ensures Invariant(k, s');
  {
    PutIsCorrect(s.root, s'.root, key, value);
  }

  lemma GrowPreservesInvariant<Value>(k: Constants, s: Variables, s': Variables, childrenToLeft: int)
  requires Invariant(k, s);
  requires Grow(k, s, s', childrenToLeft);
  ensures Invariant(k, s');
  {
    if (s.root.Leaf?) {
      GrowLeafIsCorrect(s.root, s'.root, childrenToLeft);
    } else {
      GrowIndexIsCorrect(s.root, s'.root, childrenToLeft);
    }
  }

  lemma NextStepPreservesInvariant(k: Constants, s: Variables, s': Variables, step: Step)
  requires Invariant(k, s);
  requires NextStep(k, s, s', step);
  ensures Invariant(k, s');
  {
    match step {
      case GetStep(key, value, lookup) => {
      }
      case PutStep(key, value) => {
        PutPreservesInvariant(k, s, s', key, value);
      }
      case GrowStep(childrenToLeft) => {
        GrowPreservesInvariant(k, s, s', childrenToLeft);
      }
    }
  }

  lemma NextPreservesInvariant(k: Constants, s: Variables, s': Variables)
  requires Invariant(k, s)
  requires Next(k, s, s')
  ensures Invariant(k, s')
  {
    var step :| NextStep(k, s, s', step);
    NextStepPreservesInvariant(k, s, s', step);
  }
}
