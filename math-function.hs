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

-- Others built-in functions
piValue = pi
eValue = exp 1
ePow9 = exp 9
logOf9 = log 9
logOf10 = log 10
truncateValue = truncate 5.9999
roundUpValue = round 5.4
roundDownValue = ceiling 5.5
roundFloorValue = floor 5.5
roundCeilingValue = ceiling 5.5

-- Logical Operators
logicalAnd = True && False
logicalOr = True || False
logicalNot = not True

-- Trick: In Haskell to know the signature of a function, you can use the :t command in GHCi
-- Example: :t (+) -> (+) :: Num a => a -> a -> a
-- OBS: "Num" represents all numeric types in Haskell, such as Int, Integer, Float, Double, etc.

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

    putStrLn ("Pi Value: " ++ show piValue)

    putStrLn ("Euler's Number: " ++ show eValue)
    putStrLn ("e^9: " ++ show ePow9)
    
    putStrLn ("Logarithm of 9: " ++ show logOf9)
    putStrLn ("Logarithm of 10: " ++ show logOf10)

    putStrLn ("Truncated Value of 5.9999: " ++ show truncateValue)
    putStrLn ("Rounded Value of 5.4: " ++ show roundUpValue)
    putStrLn ("Rounded Value of 5.5: " ++ show roundDownValue)
    putStrLn ("Ceiling Value of 5.5: " ++ show roundCeilingValue)
    putStrLn ("Floor Value of 5.5: " ++ show roundFloorValue)

    putStrLn ("Logical AND: True && False = " ++ show logicalAnd)
    putStrLn ("Logical OR: True || False = " ++ show logicalOr)
    putStrLn ("Logical NOT: not True = " ++ show logicalNot)
    