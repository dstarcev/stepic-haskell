module Module3.Task10 where

squares'n'cubes :: Num a => [a] -> [a]
squares'n'cubes = concatMap (\x -> [x*x, x*x*x])
