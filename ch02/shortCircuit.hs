-- file: ch02/shortCircuit.hs
-- Non-strict evaluation (lazy evaluation)
newOr a b = if a then a else b
