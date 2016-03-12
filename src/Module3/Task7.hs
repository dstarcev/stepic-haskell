module Module3.Task7 where

import Data.Char

readDigits :: String -> (String, String)
readDigits x = (takeWhile isDigit x, dropWhile isDigit x)
