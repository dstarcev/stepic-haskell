module Module3.Task8 where

filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj a b = filter (\x -> a x || b x)
