-- file: ch03/NestedLets.hs
foo = let a = 1
      in let b = 2
         in a + b

-- file: ch03/NestedLets.hs
-- The inner x is hiding, or shadowing, the outer x. It has the same name, but
-- a different type ans value
bar = let x = 1
      in ((let x = "foo" in x), x)

-- file: ch03/NestedLets.hs
quux a = let a = "foo"
         in a ++ "eek"
