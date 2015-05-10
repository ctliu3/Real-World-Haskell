import Data.Char(toUpper)

isGreen :: IO Bool
isGreen = putStrLn "Is Green your favorite color?" >>
  getLine >>=
  (\inStr -> return ((toUpper . head) inStr == 'Y'))
