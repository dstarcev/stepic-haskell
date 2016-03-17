module Module4.Task5 where

-- system code
data Result = Fail | Success
data SomeData = ValidData | InvalidData

doSomeWork :: SomeData -> (Result, Int)
doSomeWork ValidData = (Success, 0)
doSomeWork InvalidData = (Fail, 5)

-- solution code
processData :: SomeData -> String
processData d =
  case doSomeWork d of
    (Success, _) -> "Success"
    (_, erNo) -> "Fail: " ++ show erNo
