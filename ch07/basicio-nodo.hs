-- file: ch07/basicio-nodo.hs
main = putStrLn "Greetings! What is your name?" >>
  getLine >>=
  -- lambda expression
  (\input -> putStrLn $ "Welcome to Haskell, " ++ input ++ "!")
