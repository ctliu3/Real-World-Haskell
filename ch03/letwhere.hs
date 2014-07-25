-- file: ch03/letwhere.hs
bar = let b = 2
          c = True
      in let a = b -- a is only visible within the inner let expression
         in (a, c)

-- file: ch03/letwhere.hs
foo = x
    where x = y
              where y = 2
