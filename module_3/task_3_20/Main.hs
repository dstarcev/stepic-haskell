sumOdd :: [Integer] -> Integer
sumOdd = (foldr (+) 0) . (filter odd)
