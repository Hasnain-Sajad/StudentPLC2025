-- inpFunc generates a range of integers from 'a' to 'b'
inpFunc :: Int -> Int -> [Int]
inpFunc a b = [a..b]

-- applicatorFunc takes a list of integers and a character to decide the operation
applicatorFunc :: [Int] -> Char -> Double
applicatorFunc inpFunc s
    | s == 's'  = fromIntegral (sum inpFunc)  -- Sum of the list
    | s == 'a'  = fromIntegral (sum inpFunc) / fromIntegral (length inpFunc)  -- Average of the list
    | otherwise = 0  -- Default case in case an invalid character is provided

main :: IO ()
main = do
    -- Get input from the user for the range
    putStrLn "Enter the start of the range:"
    a <- readLn :: IO Int
    putStrLn "Enter the end of the range:"
    b <- readLn :: IO Int
    
    -- Get input for the operation type (sum or average)
    putStrLn "Enter 's' for sum or 'a' for average:"
    s <- getLine
    
    -- Create the input range
    let range = inpFunc a b
    
    -- Call the applicatorFunc with the range and operation type
    let result = applicatorFunc range (head s)  -- head s because we expect a single character input
    
    -- Output the result
    putStrLn $ "Result: " ++ show result
