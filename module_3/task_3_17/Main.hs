-- system code
coins :: (Ord a, Num a) => [a]
coins = [2, 3, 7]

-- solution code
change :: (Ord a, Num a) => a -> [[a]]
change 0 = [[]]
change s = [coin:ch | coin <- coins, coin <= s, ch <- (change $ s - coin)]
