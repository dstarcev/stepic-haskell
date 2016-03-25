module Module5.Task9 where
import Control.Monad (ap)

-- system code
data SomeType a = This a | That a
  deriving Show

instance Monad SomeType where
  return x = This x
  (>>=) (This x) f = f x

instance Applicative SomeType where
  pure  = return
  (<*>) = ap

-- solution code
instance Functor SomeType where
  fmap f x = x >>= return . f
