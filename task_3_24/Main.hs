lastElem :: [a] -> a
lastElem = foldl1 $ flip const
