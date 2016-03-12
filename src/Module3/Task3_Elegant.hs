module Module3.Task3_Elegant where

oddsOnly :: Integral a => [a] -> [a]
oddsOnly = filter odd
