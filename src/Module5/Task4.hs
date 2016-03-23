module Module5.Task4 where

-- system code
data Entry k1 k2 v = Entry (k1, k2) v deriving Show
data Map k1 k2 v = Map [Entry k1 k2 v] deriving Show

-- solution code
instance Functor (Entry k1 k2) where
  fmap f (Entry (k1, k2) v) = Entry (k1, k2) (f v)

instance Functor (Map k1 k2) where
  fmap f (Map entries) = Map (map (fmap f) entries)
