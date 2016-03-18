module Module4.Task14 where

data Coord a = Coord a a

distance :: Coord Double -> Coord Double -> Double
distance (Coord x1 y1) (Coord x2 y2) =
  sqrt $ (x1 - x2)^2 + (y1 - y2)^2

manhDistance :: Coord Int -> Coord Int -> Int
manhDistance (Coord x1 y1) (Coord x2 y2) =
  abs (x1 - x2) + abs (y1 - y2)
