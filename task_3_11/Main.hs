perms :: [a] -> [[a]]
perms [] = [[]]
perms (x:xs) = let
    len = length xs
    xperm p n = let
        (l, r) = splitAt n p
      in l ++ [x] ++ r
    xperms p = map (xperm p) [0..len]
  in concatMap xperms $ perms xs
