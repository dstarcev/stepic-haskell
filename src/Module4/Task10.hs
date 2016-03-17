module Module4.Task10 where

import Data.List (unfoldr)

data Bit = Zero | One deriving Show
data Sign = Minus | Plus deriving Show
data Z = Z Sign [Bit] deriving Show

zToInt (Z Minus bits) = - zToInt (Z Plus bits)
zToInt (Z _ bits) = foldr (\x a -> a * 2 + toInt x) 0 bits where
  toInt One = 1
  toInt Zero = 0

intToZ x = (Z (sign x) (toBin $ abs x)) where
  sign n = if n < 0 then Minus else Plus
  toDigit 0 = Zero
  toDigit 1 = One
  toBin = unfoldr (\x -> if x > 0
                         then Just (toDigit $ rem x 2, div x 2)
                         else Nothing)

op f a b = intToZ $ f (zToInt a) (zToInt b)

add :: Z -> Z -> Z
add = op (+)

mul :: Z -> Z -> Z
mul = op (*)
