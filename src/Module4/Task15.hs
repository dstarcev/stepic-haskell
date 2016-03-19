module Module4.Task15 where

data Coord a = Coord a a deriving Show

getCenter :: Double -> Coord Int -> Coord Double
getCenter unit (Coord x y) = let
    c a = unit * (fromIntegral a + 0.5)
  in Coord (c x) (c y)

getCell :: Double -> Coord Double -> Coord Int
getCell unit (Coord x y) = let
    n x = floor $ x / unit
  in Coord (n x) (n y)
