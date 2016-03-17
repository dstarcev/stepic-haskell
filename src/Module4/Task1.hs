module Module4.Task1 where

-- system code
data Color = Red | Green | Blue

-- solution code
instance Show Color where
  show Red = "Red"
  show Green = "Green"
  show Blue = "Blue"
