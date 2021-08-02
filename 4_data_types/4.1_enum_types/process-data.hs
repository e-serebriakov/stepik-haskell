module ProcessDataModule where 

data Result = Fail | Success

doSomeWork :: SomeData -> (Result,Int)

processData :: SomeData -> String
processData d = 
    case doSomeWork d of
        (Success, _) -> "Success"
        (_, n) -> "Fail: " ++ (show n)