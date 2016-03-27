module Module5.Task23 where
import Control.Monad.State (State, get, modify', runState, evalState)
import Control.Monad (replicateM)

-- system code
data Tree a = Leaf a | Fork (Tree a) a (Tree a) deriving Show

-- solution code
numberTree :: Tree () -> Tree Integer
numberTree tree = evalState (helper tree) 1 where
  helper (Leaf _) = do
    n <- get
    modify' succ
    return $ Leaf n
  helper (Fork l _ r) = do
    l' <- helper l
    n <- get
    modify' succ
    r' <- helper r
    return $ Fork l' n r'
