concatList :: [[a]] -> [a]
concatList = foldr (++) []
