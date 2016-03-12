module Module3.Task5 where

sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 = iter []
  where
    iter a [] [] [] = reverse a
    iter a [] a2 a3 = iter a [0] a2 a3
    iter a a1 [] a3 = iter a a1 [0] a3
    iter a a1 a2 [] = iter a a1 a2 [0]
    iter a (x1:xs1) (x2:xs2) (x3:xs3) =
      iter (x1 + x2 + x3 : a) xs1 xs2 xs3
