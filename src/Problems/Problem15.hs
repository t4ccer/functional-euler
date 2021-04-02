module Problems.Problem15 (problem15) where

import           Lib

problem15 :: Integer
problem15 = solveOne 20

solveOne :: Integral a => a -> a
solveOne n = (2*n) `choose` n

