import Data.List
import System.IO

-- The function type declaration consists of the following structure:
-- functionName :: paramType1 -> paramType2 -> ... -> returnType (this notation is because of currying)
addMe :: Int -> Int -> Int
-- The function definition consists of the following structure:
-- functionName param1 param2 = expression (this expression is the return value)
addMe x y = x + y

addTuples :: (Int, Int) -> (Int, Int) -> (Int, Int)
addTuples (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

-- Declaring multiple functions to match different input (applying pattern matching)
whatAge 16 = "You can drive"
whatAge 18 = "You can vote"
whatAge 21 = "You can drink"
whatAge _ = "You are too young to do anything"
-- The underscore is a wildcard pattern that matches anything, but does not bind to a variable.

main :: IO()
main = do
    putStrLn ("Adding 2 and 3 gives: " ++ show (addMe 2 3))
    putStrLn ("Adding 5 and 7 gives: " ++ show (addMe 5 7))

    putStrLn ("Adding (2, 3) and (5, 7) gives: " ++ show (addTuples (2, 3) (5, 7)))

    putStrLn ("I am 16 years old, " ++ whatAge 16)
    putStrLn ("I am 18 years old, " ++ whatAge 18)
    putStrLn ("I am 21 years old, " ++ whatAge 21)
    putStrLn ("I am 15 years old, " ++ whatAge 15)
