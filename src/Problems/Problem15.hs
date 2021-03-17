module Problems.Problem15 (problem15) where

import           Lib

problem15 :: Integer
problem15 = solveOne 20

solveOne :: Integral a => a -> a
solveOne n = (2*n) `choose` n

fact :: (Num a, Enum a) => a -> a
fact n = product' [1..n]

choose :: Integral a => a -> a -> a
choose n k = div (fact n) (fact k * fact (n-k))
