module Module5.Task8 where
import Control.Monad (liftM, ap)
import Module5.Task5 (Log(..))
import Module5.Task6 (returnLog)
import Module5.Task7 (bindLog)

-- system code
instance Monad Log where
  return = returnLog
  (>>=) = bindLog

instance Functor Log where
  fmap = liftM

instance Applicative Log where
  pure  = return
  (<*>) = ap

-- solution code
execLoggersList :: a -> [a -> Log a] -> Log a
execLoggersList = foldl (>>=) . return
