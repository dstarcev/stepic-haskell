oddsOnly :: Integral a => [a] -> [a]
oddsOnly = iter []
  where
    reverse l [] = l
    reverse l (x:xs) = reverse (x:l) xs
    iter l [] = reverse [] l
    iter l (x:xs) = iter (if odd x then (x:l) else l) xs
