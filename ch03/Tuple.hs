-- file: ch03/Tuple.hs
-- Return the last element of a 3-tuple
third (a, b, c) = c

-- file: ch03/Tuple.hs
complicated (True, a, x : xs, 5) = (a, xs)
