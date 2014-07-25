-- file: ch04/Sum.hs
-- helper function is tail recursive
mySum xs = helper 0 xs
    where helper acc (x : xs) = helper (acc + x) xs
          helper acc []           = acc

-- file: ch04/Sum.hs
niceSum :: [Integer] -> Integer
-- we're no longer using explicit recursion, because foldl takes care of that 
-- for us
niceSum xs = foldl (+) 0 xs

-- file: ch04/Sum.hs
nicerSum :: [Integer] -> Integer
nicerSum = foldl (+) 0
