onePlusone :: IO ()
onePlusone = putStrLn "1 + 1 = 2"

main :: IO ()
main = do
    putStrLn "Welcome to the programme. Please enter your name"
    name <- getLine
    putStrLn ("Hello " ++ name ++ ", hope you like Haskell.")
    onePlusone  -- Calling the onePlusone function here