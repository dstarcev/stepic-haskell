module Module4.Task4 where

-- system code
data LogLevel = Error | Warning | Info

-- solution code
cmp :: LogLevel -> LogLevel -> Ordering
cmp a b = compare (i a) (i b) where
  i Error = 2
  i Warning = 1
  i Info = 0
