module Module5.Task2 where
import Module5.Task1

-- system code
data GeomPrimitive a = Point (Point3D a) | LineSegment (Point3D a) (Point3D a)
  deriving Show

-- solution code
instance Functor GeomPrimitive where
  fmap f (Point x) = Point (fmap f x)
  fmap f (LineSegment x y) = LineSegment (fmap f x) (fmap f y)
