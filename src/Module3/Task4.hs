module Module3.Task4 where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome x = x == reverse x
