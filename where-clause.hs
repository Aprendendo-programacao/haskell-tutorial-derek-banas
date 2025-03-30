import Data.List
import System.IO

-- What is the where clause?
-- The where clause is a way to define local variables that are only visible in the scope of the function.
-- It is used to avoid repeating code in guard clauses and to make the code more readable.
-- The where clause is defined after the function definition and is indented to the right.

batAvgRating :: Double -> Double -> String
batAvgRating hits atBats
    | avg <= 0.2 = "Terrible Batting Average"
    | avg <= 0.25 = "Bad Batting Average"
    | avg <= 0.28 = "Average Batting Average"
    | otherwise = "Good Batting Average"
    where avg = hits / atBats

main :: IO ()
main = do
    putStrLn ("hits = 10 and atBats = 50, batAvgRating = " ++ show (batAvgRating 10 50))
    putStrLn ("hits = 10 and atBats = 40, batAvgRating = " ++ show (batAvgRating 10 40))
    putStrLn ("hits = 10 and atBats = 36, batAvgRating = " ++ show (batAvgRating 10 36))
    putStrLn ("hits = 10 and atBats = 10, batAvgRating = " ++ show (batAvgRating 10 10))