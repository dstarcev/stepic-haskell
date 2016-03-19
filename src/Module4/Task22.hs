module Module4.Task22 where

data Nat = Zero | Suc Nat deriving Show

fromNat :: Nat -> Integer
fromNat Zero = 0
fromNat (Suc n) = fromNat n + 1

toNat :: Integer -> Nat
toNat 0 = Zero
toNat n = Suc $ toNat $ n - 1

bin :: (Integer -> Integer -> Integer) -> Nat -> Nat -> Nat
bin f a b = toNat $ f (fromNat a) (fromNat b)

add :: Nat -> Nat -> Nat
add = bin (+)

mul :: Nat -> Nat -> Nat
mul = bin (*)

facI 0 = 1
facI x = x * (facI $ x - 1)

fac :: Nat -> Nat
fac = bin (const facI) Zero
