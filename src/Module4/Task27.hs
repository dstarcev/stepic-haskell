module Module4.Task27 where

newtype Maybe' a = Maybe' { getMaybe :: Maybe a } deriving (Eq,Show)

instance Monoid a => Monoid (Maybe' a) where
  mempty = Maybe' $ Just mempty
  mappend (Maybe' Nothing) _ = Maybe' Nothing
  mappend _ (Maybe' Nothing) = Maybe' Nothing
  mappend (Maybe' a) (Maybe' b) = Maybe' (mappend a b)
