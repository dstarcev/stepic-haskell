module Module3.Task25 where

import Data.List
revRange :: (Char,Char) -> [Char]
revRange = unfoldr g
  where g (a, b)  | a > b = Nothing
                  | otherwise = Just (b, (a, pred b))
