module Module4.Task2 where

charToInt :: Char -> Int
charToInt x | x `elem` ['0'..'9'] = (fromEnum x) - 48
