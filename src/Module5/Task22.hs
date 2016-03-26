module Module5.Task22 where
import Control.Monad.State (State, get, put, execState)
import Control.Monad (replicateM)

-- system code
fib :: Int -> Integer
fib n = fst $ execStateN n fibStep (0, 1)

-- solution code
fibStep :: State (Integer, Integer) ()
fibStep = do
  (a, b) <- get
  put (b, a + b)

execStateN :: Int -> State s a -> s -> s
execStateN n m = execState (replicateM n m)
