module Module3.Task20 where

sumOdd :: [Integer] -> Integer
sumOdd = (foldr (+) 0) . (filter odd)
