module Module3.Task24 where

lastElem :: [a] -> a
lastElem = foldl1 $ flip const
