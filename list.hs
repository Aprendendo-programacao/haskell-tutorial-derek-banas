import Data.List
import System.IO

-- Create a list
primes = [2, 3, 5, 7, 11]

-- Concatenate lists using "++" operator (the same operator to concatenate strings)
morePrimes = primes ++ [13, 17, 19, 23, 29]

-- Using ":" operator to create a list
nums = 1 : 2 : 3 : 4 : 5 : []

-- Why nums = [] : 1 : 2 : 3 : 4 : 5 does not work?
-- Reason: The ":" operator is right associative, so the expression is interpreted as:
-- nums = 1 : (2 : (3 : (4 : (5 : []))))
-- What "right associative" means is that the ":" operator groups from the right side. As shown above.

-- Using ":" operator to add an element to the front of a list
nums2 = 0 : nums

-- Get list length
listLength = length nums

-- Reverse a list
reversedList = reverse nums

-- Check if a list is empty
isListEmpty = null nums

-- Get the first element of a list using "head" operator
firstElement = head nums
-- Get the last element of a list using "last" operator
lastElement = last nums

-- Get the first element of a list using "!!" operator
firstElement2 = nums !! 0
-- Get the last element of a list using "!!" operator
lastElement2 = nums !! (length nums - 1)

-- Using "init" operator to get all elements except the last one
initList = init nums

-- Get the first 3 elements of a list using "take" operator
firstThreeElements = take 3 nums

-- Remove the first 3 elements of a list using "drop" operator
removeThreeElements = drop 3 nums

-- Check if a number is in a list using "elem" operator
isInList = 3 `elem` nums

-- Get the highest number in a list using "maximum" operator
highestNumber = maximum nums

-- Get the lowest number in a list using "minimum" operator
lowestNumber = minimum nums

-- Calculate the sum of a list using "sum" operator
sumOfList = sum nums

-- Calculate the product of a list using "product" operator
productOfList = product nums

-- Create range from 1 to 10
range1to10 = [1..10]

-- Create range from A to Z
rangeAtoZ = ['A'..'Z']

-- Create range from 1 to 10 with step 2
range1to10Step2 = [1,3..10]

-- Create list of doubles
doubles = [x * 2 | x <- [1..10]]

-- Filter values from a list
doublesUntil10 = [x * 2 | x <- [1..10], x * 2 <= 10]

-- Apply multiple filters values from a list
numDividesBy3and5 = [x | x <- [1..100], x `mod` 3 == 0, x `mod` 5 == 0]

main :: IO()
main = do
    putStrLn ("Primes: " ++ show primes)
    putStrLn ("More Primes: " ++ show morePrimes)

    putStrLn ("Numbers: " ++ show nums)

    putStrLn ("Numbers2: " ++ show nums2)

    putStrLn ("List Length: " ++ show listLength)
    putStrLn ("Reversed List: " ++ show reversedList)
    putStrLn ("Is List Empty: " ++ show nums ++ " " ++ show isListEmpty)

    putStrLn ("First Element using 'head' operator: " ++ show firstElement)
    putStrLn ("Last Element using 'last' operator: " ++ show lastElement)

    putStrLn ("First Element using '!!' operator: " ++ show firstElement2)
    putStrLn ("Last Element using '!!' operator: " ++ show lastElement2)

    putStrLn ("Init List: " ++ show initList)

    putStrLn ("First 3 Elements: " ++ show firstThreeElements)

    putStrLn ("Remove 3 Elements: " ++ show removeThreeElements)

    putStrLn ("Is 3 in List: " ++ show nums ++ " " ++ show isInList)
    putStrLn ("Highest Number: " ++ show highestNumber)
    putStrLn ("Lowest Number: " ++ show lowestNumber)

    putStrLn ("Sum of List: " ++ show sumOfList)
    putStrLn ("Product of List: " ++ show productOfList)

    putStrLn ("Range from 1 to 10: " ++ show range1to10)
    putStrLn ("Range from A to Z: " ++ show rangeAtoZ)
    putStrLn ("Range from 1 to 10 with step 2: " ++ show range1to10Step2)
    putStrLn ("Doubles: " ++ show doubles)
    putStrLn ("Doubles until 20: " ++ show doublesUntil10)
    putStrLn ("Numbers divides by 3 and 5: " ++ show numDividesBy3and5)
