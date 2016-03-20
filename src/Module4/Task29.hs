module Module4.Task29 where

import Prelude hiding (lookup)

class MapLike m where
  empty :: m k v
  lookup :: Ord k => k -> m k v -> Maybe v
  insert :: Ord k => k -> v -> m k v -> m k v
  delete :: Ord k => k -> m k v -> m k v
  fromList :: Ord k => [(k,v)] -> m k v
  fromList [] = empty
  fromList ((k,v):xs) = insert k v (fromList xs)

newtype ArrowMap k v = ArrowMap { getArrowMap :: k -> Maybe v }

instance MapLike ArrowMap where
  empty = ArrowMap $ const Nothing
  lookup key (ArrowMap map) = map key
  insert key value (ArrowMap map) =
    ArrowMap (\k -> if k == key then Just value else map k)
  delete key (ArrowMap map) =
    ArrowMap (\k -> if k == key then Nothing else map k)
