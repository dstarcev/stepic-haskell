module Module3.Task22 where

-- it also works for task 23
evenOnly :: [a] -> [a]
evenOnly = (foldr (\(n, x) xs -> if even n then x:xs else xs) []) . (zip [1..])
