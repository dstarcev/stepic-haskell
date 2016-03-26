module Module5.Task18 where
import Data.Monoid (Sum(..))
import Control.Monad.Writer (Writer, execWriter, writer)

-- system code
type Shopping = Writer (Sum Integer) ()

shopping1 :: Shopping
shopping1 = do
  purchase "Jeans"   19200
  purchase "Water"     180
  purchase "Lettuce"   328

-- solution code
purchase :: String -> Integer -> Shopping
purchase _ cost = writer ((), Sum cost)

total :: Shopping -> Integer
total = getSum . execWriter
