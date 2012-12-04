-- file: ch02/myDrop.hs
myDrop :: Int -> [a] -> [a]
myDrop n nx = if n <= 0 || null nx
              then nx
              else myDrop (n - 1) (tail nx)
-- or
-- myDrop n nx = if n <= 0 || null nx then nx else myDrop (n - 1) (tail nx)
