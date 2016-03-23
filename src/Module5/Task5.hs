module Module5.Task5 where

-- system code
data Log a = Log [String] a deriving Show

-- solution code
toLogger :: (a -> b) -> String -> (a -> Log b)
toLogger f msg = Log [msg] . f

execLoggers :: a -> (a -> Log b) -> (b -> Log c) -> Log c
execLoggers a f g = Log (logb ++ logc) c where
  (Log logb b) = f a
  (Log logc c) = g b
