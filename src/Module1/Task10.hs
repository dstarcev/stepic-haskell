module Module1.Task10 where

fibonacci :: Integer -> Integer
fibonacci n
  | n == 0 = 0
  | n == 1 = 1
  | n < 0 = -(-1) ^ (-n) * fibonacci (-n)
  | n > 0 = fibonacciIter 0 1 (n - 2)

fibonacciIter acc1 acc2 0 = acc1 + acc2
fibonacciIter acc1 acc2 n =
  fibonacciIter (acc2) (acc1 + acc2) (n - 1)
