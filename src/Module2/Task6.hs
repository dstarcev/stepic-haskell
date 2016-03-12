module Module2.Task6 where

-- it's a system part
class Printable a where
  toString :: a -> [Char]

instance Printable Bool where
  toString True = "true"
  toString False = "false"

instance Printable () where
  toString () = "unit type"

-- solution starts from here
instance (Printable a, Printable b) => Printable (a, b) where
  toString (a, b) = "(" ++ (toString a) ++ "," ++ (toString b) ++ ")"
