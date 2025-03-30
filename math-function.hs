import Data.List
import System.IO
import System.Posix (OpenFileFlags(trunc))

-- Sum of numbers from 1 to 10
sumOfNums = sum [1..10]

-- Basic Arithmetic Operations
addNum = 5 + 3
subNum = 5 - 3
mulNum = 5 * 3
divNum = 5 / 3

truncateNum = 5 `div` 3

modPrefixNum = mod 5 3
modInfixNum = 5 `mod` 3

sumNegNum = 5 + (-3)
-- sumNegNum = 5 + -3 -- Error because Haskell cannot understand if the negative sign is a unary operator (negative) or binary operator (subtraction)

main :: IO ()
main = do
    putStrLn ("Sum of numbers from 1 to 10: " ++ show sumOfNums)

    putStrLn ("Addition: 5 + 3 = " ++ show addNum)
    putStrLn ("Subtraction: 5 - 3 = " ++ show subNum)
    putStrLn ("Multiplication: 5 * 3 = " ++ show mulNum)
    putStrLn ("Division: 5 / 3 = " ++ show divNum)
    putStrLn ("Integer Division: 5 `div` 3 = " ++ show truncateNum)

    putStrLn ("Modulus Prefix Operator: mod 5 3 = " ++ show modPrefixNum)
    putStrLn ("Modulus Infix Operator: 5 `mod` 3 = " ++ show modInfixNum)

    putStrLn ("Sum with Negative Number: 5 + (-3) = " ++ show sumNegNum)