module Module5.Task3 where

-- system code
data Tree a = Leaf (Maybe a) | Branch (Tree a) (Maybe a) (Tree a) deriving Show

-- solution code
instance Functor Tree where
  fmap f (Leaf x) = Leaf (fmap f x)
  fmap f (Branch l x r) = Branch (fmap f l) (fmap f x) (fmap f r)
