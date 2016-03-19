module Module4.Task19 where

import Data.List.Split (splitOn)
import Text.Read (readMaybe)

data Error = ParsingError
           | IncompleteDataError
           | IncorrectDataError String
           deriving Show

data Person = Person {
  firstName :: String,
  lastName :: String,
  age :: Int } deriving Show

parsePerson :: String -> Either Error Person
parsePerson str = let
    fields = map (splitOn " = ") $ splitOn "\n" str

    isInvalid [k,(v:vs)] = False
    isInvalid _ = True

    parse | any isInvalid fields = Left ParsingError
          | otherwise = checkCompletness

    pairs = map (\[key, value] -> (key, value)) fields
    value key = lookup key pairs

    checkCompletness = case (value "firstName", value "lastName", value "age") of
      (Just f, Just l, Just a) -> checkData (f, l, a)
      _ -> Left IncompleteDataError

    checkData (f, l, a) = case readMaybe a :: Maybe Int of
      (Just a) -> Right (Person f l a)
      _ -> Left (IncorrectDataError a)
  in parse
