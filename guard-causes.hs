import Data.List
import System.IO

-- The guard causes a function to return a value based on a condition and return a default value if the condition is not met.
isOdd :: Int -> Bool
isOdd n
    | n `mod` 2 == 0 = False
    | otherwise = True

isEven :: Int -> Bool
isEven n = n `mod` 2 == 1

whatGrade :: Int -> String
whatGrade age
    | age < 6 = "Kindergarten"
    | age < 11 = "Elementary"
    | age < 15 = "Middle School"
    | age < 19 = "High School"
    | otherwise = "College"

main :: IO ()
main = do
    putStrLn ("20 is odd? " ++ show (isOdd 20))
    putStrLn ("21 is odd? " ++ show (isOdd 21))

    putStrLn ("12 is even? " ++ show (isEven 20))
    putStrLn ("3 is even? " ++ show (isEven 21))

    putStrLn ("What grade is 5? " ++ whatGrade 5)
    putStrLn ("What grade is 10? " ++ whatGrade 10)
    putStrLn ("What grade is 14? " ++ whatGrade 14)
    putStrLn ("What grade is 18? " ++ whatGrade 18)
    putStrLn ("What grade is 20? " ++ whatGrade 20)