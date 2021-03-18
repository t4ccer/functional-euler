module Problems.Problem14 (problem14) where

import           Lib

problem14 :: Int
problem14 = maximumOn collatzLen [2..999999]

collatz :: Int -> Int
collatz 1 = 1
collatz n
  | even n = n `div` 2
  | otherwise = n*3 + 1

-- It is of by 1 (1 smaller) but doesnt matter to this problem
collatzLen :: Int -> Int
collatzLen = length . takeWhile (/=1) . iterate collatz

