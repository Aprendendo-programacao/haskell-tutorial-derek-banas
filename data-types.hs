import Data.List
import System.IO

-- Int -2^63 to 2^63-1
minInt = minBound :: Int
maxInt = maxBound :: Int

-- Integer can handle larger numbers (limited by hardware memory size)
showInteger = show (2^70 :: Integer)

-- Float is a single-precision floating point number
floatOperation = 1.99999999999 + 0.00000000001

-- Bool is a data type that can be either True or False
boolTrue = True
boolFalse = False

-- Char is a single character
charA = 'A'

-- Tuple is a fixed-size collection of elements
tupleExample = (1, "Hello", True)

main :: IO ()
main = do
    putStrLn ("Min Int: " ++ show minInt)
    putStrLn ("Max Int: " ++ show maxInt)

    putStrLn ("Integer: " ++ showInteger)

    putStrLn ("Float: " ++ show floatOperation)

    putStrLn ("Bool True: " ++ show boolTrue)
    putStrLn ("Bool False: " ++ show boolFalse)

    putStrLn ("Char: " ++ show charA)
    putStrLn ("Char: " ++ [charA]) -- Convert Char to String

    putStrLn ("Tuple: " ++ show tupleExample)