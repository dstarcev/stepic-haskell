module Module3.Task17_Unique (change) where

import Data.List (nub, sort)

-- system code
coins :: (Ord a, Num a) => [a]
coins = [2, 3, 7]

--solution code
change :: (Ord a, Num a) => a -> [[a]]
change = f where
  f 0 = [[]]
  f s = nub [
    sort (coin:ch) |
    coin <- coins,
    coin <= s,
    ch <- (f $ s - coin)]
