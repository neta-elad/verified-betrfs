// 

module Example {
    type Value(==)

    predicate MySetContains(vs: set<Value>, v: Value)
    {
        v in vs
    }



    lemma EqualValues(v1: Value, v2: Value)
    requires v1 == v2
    ensures v1 == v2
    {

    }

    // extensionality example
    lemma EqualSets(s1: set<Value>, s2: set<Value>, s3: set<set<Value>>)
    requires forall x :: (x in s1) == (x in s2)
    ensures (s1 in s3) == (s2 in s3)
    {
        assert s1 == s2; // trigger: set extensionality axiom
    }

    // predicate body trigger example
    lemma EqualSets2(s1: set<Value>, s2: set<Value>)
    requires forall x :: (x in s1) == (x in s2)
    requires !exists y :: MySetContains(s1, y)
    ensures !exists z :: z in s2
    {
        assert s1 == s2; // trigger: set extensionaliyt axiom

        // Only need one the following two assertions:
        // assert forall w :: MySetContains(s2, w) == (w in s2); // trigger: MySetContains body for s2
        assert forall s, w :: MySetContains(s, w) == (w in s); // trigger: MySetContains body for every s
    }

    

    datatype Variables = Variables(
        f: set<Value>,
        b: bool
    )

    predicate MyVariablesContains(v: Variables, x: Value) {
        x in v.f
    }

    lemma MyContainsInField(v: Variables, v': Variables)
        requires v.f == v'.f
        requires !exists x :: MyVariablesContains(v, x)
        ensures !exists x :: MyVariablesContains(v', x)
    {
        // trigger: predicate body of MyVariablesContains
        assert forall x :: MyVariablesContains(v, x) == MyVariablesContains(v', x);
    }

    // Same as the above "MyContainsInField" 
    // but with an explicit parameter instead of quantifier
    lemma MyContainsInFieldUnquantified(v: Variables, v': Variables, x: Value)
        requires v.f == v'.f
        requires !MyVariablesContains(v, x)
        ensures !MyVariablesContains(v', x)
    {
        // No need for a similar assertion
        //assert forall x :: MyVariablesContains(v, x) == MyVariablesContains(v', x);
    }

    // Same as the above "MyContainsInField"
    // but without using the "MyVariablesContains" predicate
    lemma ContainsInField(v: Variables, v': Variables)
        requires v.f == v'.f
        requires !exists x :: x in v.f
        ensures !exists x :: x in v'.f
    {
        // No need for assertions
    }
}
