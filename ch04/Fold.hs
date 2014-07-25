import Prelude hiding (filter, foldl, foldr)

-- file: ch04/Fold.hs
foldl :: (a -> b -> a) -> a -> [b] -> a

foldl step zero (x : xs) = foldl step (step zero x) xs
foldl _    zero []       = zero

-- file: ch04/Fold.hs
foldr :: (a -> b -> b) -> b -> [a] -> b

foldr step zero (x : xs) = step x (foldr step zero xs)
foldr _    zero _        = zero

-- file: ch04/Fold.hs
myFilter p xs = foldr step [] xs
    where step x ys | p x       = x : ys
                    | otherwise = ys

-- file: ch04/Fold.hs
myFoldl :: (a -> b -> a) -> a -> [b] -> a

myFoldl f z xs = foldr step id xs z
    where step x g a = g (f a x)

-- file: ch04/Fold.hs
-- Transforms a list into a copy of itself
identity :: [a] -> [a]
identity xs = foldr (:) [] xs

-- file: ch04/Fold.hs
append :: [a] -> [a] -> [a]
append xs ys = foldr (:) ys xs
