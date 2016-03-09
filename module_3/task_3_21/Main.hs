meanList :: [Double] -> Double
meanList = (uncurry (/)) . foldr (\x (s,c) -> (s+x,c+1)) (0,0)
