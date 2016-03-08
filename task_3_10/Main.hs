squares'n'cubes :: Num a => [a] -> [a]
squares'n'cubes = concatMap (\x -> [x*x, x*x*x])
