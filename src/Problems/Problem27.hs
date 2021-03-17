module Problems.Problem27 (problem27) where

import           Lib

problem27 :: Int
problem27 = solveOne 1000

solveOne :: Int -> Int
solveOne x = uncurry (*) $ maximumOn howManyYelds coeffs
  where
    coeffs =  [(a, b) | a <- [-x+1..x-1], b <- filter isPrime [1..x]]

howManyYelds :: (Int, Int) -> Int
howManyYelds (a, b) = length $ takeWhile isPrime [n*n + a*n + b | n <- [0..]]


