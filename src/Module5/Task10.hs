module Module5.Task10 where
import Data.Char (isDigit)

-- system code
data Token = Number Int | Plus | Minus | LeftBrace | RightBrace
  deriving (Eq, Show)

-- solution code
asToken :: String -> Maybe Token
asToken x = case x of
  []  -> Nothing
  "(" -> Just LeftBrace
  ")" -> Just RightBrace
  "-" -> Just Minus
  "+" -> Just Plus
  _    | all isDigit x -> Just $ Number $ read x
       | otherwise -> Nothing

tokenize :: String -> Maybe [Token]
tokenize = sequence . (map asToken) . words
