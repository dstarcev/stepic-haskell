module Module4.Task21 where

data List a = Nil | Cons a (List a) deriving Show

fromList :: List a -> [a]
fromList Nil = []
fromList (Cons a b) = a : fromList b

toList :: [a] -> List a
toList [] = Nil
toList (x:xs) = Cons x $ toList xs
