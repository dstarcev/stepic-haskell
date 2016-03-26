module Module5.Task20 where
import Control.Monad.State (State, state)
import Control.Monad.Reader (Reader, runReader)

readerToState :: Reader r a -> State r a
readerToState m = state $ \e -> (runReader m e, e)
