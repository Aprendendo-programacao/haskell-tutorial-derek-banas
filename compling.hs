import Data.List
import System.IO

main :: IO()
main = do
    putStrLn "What is your name?"
    name <- getLine
    putStrLn ("Hello " ++ name ++ ", welcome to the Haskell programming language!")