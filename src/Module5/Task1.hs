module Module5.Task1 where

-- system code
data Point3D a = Point3D a a a deriving Show

-- solution code
instance Functor Point3D where
  fmap f (Point3D a b c) = Point3D (f a) (f b) (f c)
