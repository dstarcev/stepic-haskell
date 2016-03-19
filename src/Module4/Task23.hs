module Module4.Task23 where

data Tree a = Leaf a | Node (Tree a) (Tree a)

height :: Tree a -> Int
height (Leaf _) = 0
height (Node l r) = 1 + max (height l) (height r)

size :: Tree a -> Int
size (Leaf _) = 1
size (Node l r) = 1 + size l + size r
