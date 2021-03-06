-- file: ch04/Partial.hs
import Data.List (isInfixOf)

-- helper function
isInAny needle haystack = any inSequence haystack
    where inSequence s = needle `isInfixOf` s

-- file: ch04/Partial.hs
-- lambda function
isInAny2 needle haystack = any (\s -> needle `isInfixOf` s) haystack

-- file: ch04/Partial.hs
-- partially applied function
isInAny3 needle haystack = any (isInfixOf needle) haystack

-- file: ch04/Partial.hs
isInAny4 needle haystack = any (needle `isInfixOf`) haystack
