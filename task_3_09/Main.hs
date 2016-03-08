qsort :: Ord a => [a] -> [a]
qsort [] = []
qsort [x] = [x]
qsort (x:xs) = let
    left = filter (\y -> y <= x) xs
    right = filter (\y -> y > x) xs
  in (qsort left) ++ [x] ++ (qsort right)
