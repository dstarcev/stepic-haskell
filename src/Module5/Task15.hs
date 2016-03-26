module Module5.Task15 where
import Control.Monad (ap, liftM)

-- system code
data Reader r a = Reader { runReader :: (r -> a) }

instance Monad (Reader r) where
  return x = Reader $ \_ -> x
  m >>= k  = Reader $ \r -> runReader (k (runReader m r)) r

instance Applicative (Reader m) where
  pure  = return
  (<*>) = ap

instance Functor (Reader m) where
  fmap = liftM

-- solution code
local' :: (r -> r') -> Reader r' a -> Reader r a
local' f m = Reader $ (runReader m) . f
