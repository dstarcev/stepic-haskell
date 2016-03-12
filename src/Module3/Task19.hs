module Module3.Task19 where

lengthList :: [a] -> Int
lengthList = foldr (\x s -> s + 1) 0
