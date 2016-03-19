module Module4.Task24 where

data Tree a = Leaf a | Node (Tree a) (Tree a)

avg :: Tree Int -> Int
avg t =
    let (c,s) = go t
    in s `div` c
  where
    go :: Tree Int -> (Int,Int)
    go (Leaf x) = (1, x)
    go (Node l r) = let
        (lc, ls) = go l
        (rc, rs) = go r
      in (lc + rc, ls + rs)
