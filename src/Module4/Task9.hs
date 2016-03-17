module Module4.Task9 where

data Shape = Circle Double | Rectangle Double Double

isSquare :: Shape -> Bool
isSquare (Rectangle h w) = h == w
isSquare _ = False
