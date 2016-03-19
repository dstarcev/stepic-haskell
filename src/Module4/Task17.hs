module Module4.Task17 where
import Module4.Task16 (findDigit)

import Data.Char(isDigit)

findDigitOrX :: [Char] -> Char
findDigitOrX str = case findDigit str of
  Nothing -> 'X'
  Just c -> c
