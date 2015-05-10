-- file: ch13/funcrecs2.hs
data FuncRec =
  FuncRec {
    name :: String,
    calc :: Int -> Int,
    }
