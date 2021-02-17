module Problems.Problem4 (problem4) where

import           Lib

problem4 :: Int
problem4 = maximum $ filter isPalindrome $ [x * y | x <- range, y <- range]
  where range = [100..999]

