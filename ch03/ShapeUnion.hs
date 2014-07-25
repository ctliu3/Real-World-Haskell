-- file: ch03/ShapeUnion.hs
type Vector = (Double, Double)

-- All the data we define with the data keyword are algebraic data types
data Shape = Circle Vector Double
           | Poly [Vector]
