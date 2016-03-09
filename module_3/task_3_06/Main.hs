groupElems :: Eq a => [a] -> [[a]]
groupElems = iter []
  where iter a [] = reverse a
        iter [] (x:xs) = iter [[x]] xs
        iter ((y:ys):yss) (x:xs)
          | x == y    = iter ((x:y:ys):yss) xs
          | otherwise = iter ([x]:(y:ys):yss) xs
