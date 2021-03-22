module Problems.Problem29 (problem29) where

import           Data.List
import           Lib

problem29 :: Int
problem29 = solveOne 100

solveOne :: Int -> Int
solveOne n = length $ nub $ [a^b | a <- [2..n], b <- [2..n]]

