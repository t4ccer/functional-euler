{-# LANGUAGE NumericUnderscores #-}
module Problems.Problem10 (problem10) where

import           Lib

problem10 :: Int
problem10 = solveOne 2_000_000

solveOne :: Int -> Int
solveOne n = sum' $ takeWhile (<n) primes
