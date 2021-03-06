module ProjectEuler.Problem055 (solution055) where

import Control.Monad
import Data.Digits
import Util

reverseInteger :: Integer -> Integer
reverseInteger = unDigits 10 . digitsRev 10

isDecPalindrome :: Integer -> Bool
isDecPalindrome = isPalindrome . digits 10

isLychrel :: Integer -> Bool
isLychrel = all (not . isDecPalindrome) . take 50 . tail . iterate next
    where next = ap (+) reverseInteger

genericSolution :: Integer -> Integer
genericSolution n = toInteger $ length $ filter isLychrel [1..n]

solution055 :: Integer
solution055 = genericSolution 1e4
