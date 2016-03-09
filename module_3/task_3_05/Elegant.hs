import Data.List
sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 a b c = map sum $ transpose [a, b, c]
