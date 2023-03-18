function f(neta: nat) : (oded: nat)
    requires neta >= 0
    ensures oded >= 1 {
        assert neta == 10 || neta >= 0;
        neta + 1
}