{- | Our usual CustomColor type to play with -}
data CustomColor = CustomColor {
  red :: Int,
  green :: Int,
  blue :: Int
} deriving (Show, Eq, Read)

data FuncRec = FuncRec {
  name :: String,
  colorCalc :: Int -> (CustomColor, Int) -- colorCalc is a function
}

plus5func color x = (color, x + 5)
purple0 = CustomColor 255 0 255
purple1 = CustomColor {
  red = 255,
  green = 0,
  blue = 255
}

plus5 = FuncRec {name = "plus5", colorCalc = plus5func purple0}
always0 = FuncRec {name = "always0", colorCalc = \_ -> (purple0, 0)}
