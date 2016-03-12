module Module3.Task21 where

meanList :: [Double] -> Double
meanList = (uncurry (/)) . foldr (\x (s,c) -> (s+x,c+1)) (0,0)
