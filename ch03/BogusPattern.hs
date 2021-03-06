-- file: ch03/BogusPattern.hs
data Fruit = Apple | Orange

apple = "apple"
orange = "orange"

whichFruit :: String -> Fruit

whichFruit f = case f of
                -- Here, apple/orange is a local pattern varible (not refer to 
                -- the top level value name)
                apple  -> Apple
                orange -> Orange

-- file: ch03/BogusPattern.hs
equational apple  = Apple
equational orange = Orange

-- file: ch03/BogusPattern.hs
whichFruit f = case f of
                "apple"  -> Apple
                "orange" -> Orange
