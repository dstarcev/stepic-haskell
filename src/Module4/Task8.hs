module Module4.Task8 where

-- system code
data Result = Fail | Success
data SomeData = ValidData | InvalidData

doSomeWork :: SomeData -> (Result, Int)
doSomeWork ValidData = (Success, 0)
doSomeWork InvalidData = (Fail, 5)

-- solution code
data Result' = Fail' Int | Success'

instance Show Result' where
    show Success' = "Success"
    show (Fail' erNo) = "Fail: " ++ show erNo

doSomeWork' :: SomeData -> Result'
doSomeWork' x =
  case doSomeWork x of
    (Success, _) -> Success'
    (_, erNo) -> Fail' erNo
