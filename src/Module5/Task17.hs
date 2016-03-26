module Module5.Task17 where
import Control.Monad.Writer (Writer, runWriter)

evalWriter :: Writer w a -> a
evalWriter = fst . runWriter
