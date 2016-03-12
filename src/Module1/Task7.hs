module Module1.Task7 where

dist :: (Double, Double) -> (Double, Double) -> Double
dist x y =
  sqrt $ (fst y - fst x) ^ 2 + (snd y - snd x) ^ 2
