module Problems.Problem55 (problem55) where

import           Lib

problem55 :: Int
problem55 = length $ filter isLychrel [1..9999]

iter :: Integer -> Integer
iter n = n + reverseNum n

reverseNum :: Integer -> Integer
reverseNum = read . reverse . show

producesPalidrome :: [Integer] -> Bool
producesPalidrome = any isPalindrome

isLychrel :: Integer -> Bool
isLychrel = not . producesPalidrome . tail . take 50 . iterate iter
