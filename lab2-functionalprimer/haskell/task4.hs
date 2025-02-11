ask :: String -> IO ()
ask prompt = do
    putStrLn prompt
    line <- getLine
    if line == "quit"  -- Check if the user inputs "quit"
        then putStrLn "quitting..." >> return ()  -- Print "quitting..." and exit
        else do
            putStrLn ("you said: " ++ reverse line)  -- Otherwise, display the reversed input
            ask prompt  -- Keep asking for input

main :: IO ()
main = do
    let prompt = "please say something"
    ask prompt  -- Start asking the user
