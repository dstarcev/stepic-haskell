module Module5.Task21 where
import Control.Monad.State (State, state)
import Control.Monad.Writer (Writer, runWriter)

writerToState :: Monoid w => Writer w a -> State w a
writerToState m = let
  (a, w) = runWriter m
  in state $ \e -> (a, e `mappend` w)
