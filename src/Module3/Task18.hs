module Module3.Task18 where

concatList :: [[a]] -> [a]
concatList = foldr (++) []
