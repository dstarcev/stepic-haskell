module Module4.Task20 where

eitherToMaybe :: Either a b -> Maybe a
eitherToMaybe (Left a) = Just a
eitherToMaybe (Right _) = Nothing
