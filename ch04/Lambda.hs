-- file: ch04/Lambda.hs
safeHead (x : _) = Just x
safeHead _       = Nothing

-- file: ch04/Lambda.hs
-- A lambda only have a single clause in its definition
unsafeHead = \(x : _) -> x
