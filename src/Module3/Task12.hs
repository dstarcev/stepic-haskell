module Module3.Task12 where

import Data.Char
delAllUpper :: String -> String
delAllUpper = unwords . (filter $ any isLower) . words
