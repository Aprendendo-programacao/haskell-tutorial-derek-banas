import Data.List
import System.IO

factorial :: Int -> Int
factorial 0 = 1
factorial n = n * factorial (n - 1)

-- How factorial works:
-- factorial 5
--   = 5 * factorial 4
--   = 5 * (4 * factorial 3)
--   = 5 * (4 * (3 * factorial 2))
--   = 5 * (4 * (3 * (2 * factorial 1)))
--   = 5 * (4 * (3 * (2 * (1 * factorial 0))))
--   = 5 * (4 * (3 * (2 * (1 * 1))))
--   = 5 * (4 * (3 * (2 * 1)))
--   = 5 * (4 * (3 * 2))
--   = 5 * (4 * 6)
--   = 5 * 24
--   = 120

-- Another way to calculate factorial is using the "product" function:
fact :: Int -> Int
fact n = product [1 .. n]

main :: IO ()
main = do
  putStrLn ("5! = " ++ show (factorial 5))

  putStrLn ("5! = " ++ show (fact 5))