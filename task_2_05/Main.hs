class Printable a where
  toString :: a -> [Char]

instance Printable Bool where
  toString True = "true"
  toString False = "false"

instance Printable () where
  toString () = "unit type"
