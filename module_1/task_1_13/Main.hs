integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = let
    chunks = 1000
    h = (b - a) / chunks
    sum acc x 0 = acc
    sum acc x n = sum (acc + f x) (x + h) (n - 1)
  in h * (f a + f b + 2 * (sum 0 (a + h) (chunks - 1))) / 2
