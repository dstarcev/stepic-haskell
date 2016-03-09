lengthList :: [a] -> Int
lengthList = foldr (\x s -> s + 1) 0
