sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x
  | x == 0 = (0, 1)
  | x < 0 = iter 0 0 (-x)
  | otherwise = iter 0 0 x
  where
    iter sum count 0 = (sum, count)
    iter sum count x = let
        (x', d) = divMod x 10
      in iter (sum + d) (count + 1) x'
