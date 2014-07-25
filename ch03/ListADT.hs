-- file: ch03/ListADT.hs
-- One value of type a, and another of type List a
data List a = Cons a (List a)
            | Nil
              deriving (Show)

fromList (x : xs) = Cons x (fromList xs)
fromList []       = Nil
