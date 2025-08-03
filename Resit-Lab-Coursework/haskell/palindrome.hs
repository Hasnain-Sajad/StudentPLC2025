module Main where

isPalindrome :: String -> Bool
isPalindrome s = s == reverse s

promptLoop :: IO ()
promptLoop = do
  word <- getLine
  if isPalindrome word
    then putStrLn $ "Correct " ++ word ++ " is a palindrome"
    else do
      putStrLn $ word ++ " is NOT a palindrome. Try Again"
      promptLoop

main :: IO ()
main = do
  putStrLn "Please enter a palindrome"
  promptLoop
