import Data.List
import System.IO

pow3List = [3^n | n <- [0..10]]

table = [[x * y | y <- [1..10]] | x <- [1..10]]

main :: IO ()
main = do
    putStrLn ("Powers of 3: " ++ show pow3List)
    putStrLn ("Multiplication table: " ++ show table)