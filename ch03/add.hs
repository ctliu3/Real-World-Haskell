-- file: ch03/add.hs

myNot True  = False
myNot False = True

-- Pattern Matching
sumList (x : xs) = x + sumList xs
sumList []       = 0
