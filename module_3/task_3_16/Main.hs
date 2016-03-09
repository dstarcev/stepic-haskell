data Odd = Odd Integer deriving (Eq, Show)

instance Enum Odd where
  succ (Odd x) = Odd $ x + 2
  pred (Odd x) = Odd $ x - 2
  toEnum x = Odd $ toInteger x * 2 + 1
  fromEnum (Odd x) = quot (fromInteger x - 1) 2
  enumFrom = iterate succ
  enumFromThen (Odd x) (Odd y) = map Odd [x, y ..]
  enumFromTo (Odd x) (Odd y) = map Odd [x, x + 2 .. y]
  enumFromThenTo (Odd x) (Odd y) (Odd z) = map Odd [x , y .. z]
