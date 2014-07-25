-- file: ch03/Nullable.hs
-- a is a type variable
data Maybe a = Just' a
             | Nothing

someBool = Just' True
someString = Just' "something"

-- file: ch03/Nullable.hs
wrapped = Just' (Just' "wrapped")
