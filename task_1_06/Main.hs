import Data.Char
twoDigits2Int :: Char -> Char -> Int
twoDigits2Int x y =
  if isDigit x && isDigit y
  then digitToInt x * 10 + digitToInt y
  else 100
