module Problems.Problem3 (problem3) where

import           Lib

problem3 :: Int
problem3 = solveOne 600851475143

solveOne :: Int -> Int
solveOne n = head $ filter isPrime $ filter (isDivisorOf n) [end, (end-2)..0]
  where
    r = isqrt n
    end = if odd r then r else r + 1
