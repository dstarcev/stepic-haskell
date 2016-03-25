module Module5.Task12 where

pythagoreanTriple :: Int -> [(Int, Int, Int)]
pythagoreanTriple x
  | x <= 0 = []
  | otherwise = do
    b <- [1..x]
    a <- [1..b-1]
    c <- [1..x]
    True <- return $ (a^2 + b^2) == c^2
    return (a,b,c)
