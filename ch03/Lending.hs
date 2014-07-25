-- file: ch03/Lending.hs
lend amount balance = let reverve    = 100
                          newBalance = balance - amount
                      in if balance < reverve
                         then Nothing
                         else Just newBalance

-- file: ch03/Lending.hs
lend2 amount balance = if amount < reverve * 0.5
                       then Just newBalance
                       else Nothing
    where reverve    = 100
          newBalance = balance - amount

-- file: ch03/Lending.hs
lend3 amount balance
    | amount <= 0            = Nothing
    | amount > reverve * 0.5 = Nothing
    | otherwise              = Just newBalance
    where reverve    = 100
          newBalance = balance - amount
