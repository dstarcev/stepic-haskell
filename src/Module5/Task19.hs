module Module5.Task19 where
import Control.Monad.Writer (Writer, execWriter, writer)

-- system code
shopping1 :: Shopping
shopping1 = do
  purchase "Jeans"   19200
  purchase "Water"     180
  purchase "Lettuce"   328

-- solution code
type Shopping = Writer ([(String, Integer)]) ()

purchase :: String -> Integer -> Shopping
purchase item price = writer ((), [(item, price)])

total :: Shopping -> Integer
total = sum . (map snd) . execWriter

items :: Shopping -> [String]
items = (map fst) . execWriter
