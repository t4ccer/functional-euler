module Problems.Problem6(problem6) where

import           Lib

problem6 :: Int
problem6 = solveOne 100

solveOne :: (Num a, Enum a) => a -> a
solveOne n = squareOfSum - sumOfSquares
  where
    squareOfSum = isquare $ sum' [1..n]
    sumOfSquares = sum' $ map isquare [1..n]
