module Module5.Task11 where

-- system code
data Board = Board Int deriving Show

nextPositions :: Board -> [Board]
nextPositions (Board i) = [Board (i * 10 + 1), Board (i * 10 + 2)]

-- solution code
nextPositionsN :: Board -> Int -> (Board -> Bool) -> [Board]
nextPositionsN b n pred
  | n < 0 = []
  | n == 0 = filter pred [b]
  | otherwise = do
    move      <- nextPositions b
    restMoves <- nextPositionsN move (n - 1) pred
    return restMoves
