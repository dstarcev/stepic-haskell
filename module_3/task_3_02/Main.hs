nTimes:: a -> Int -> [a]
nTimes x n = iter [] x n
  where
    iter a _ 0 = a
    iter a x n = iter (x : a) x (n - 1)
