module Module4.Task3 where

data Color = Red | Green | Blue deriving (Show, Read)

stringToColor :: String -> Color
stringToColor = read
