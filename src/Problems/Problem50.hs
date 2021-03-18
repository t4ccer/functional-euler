{-# LANGUAGE NumericUnderscores #-}
module Problems.Problem50 (problem50) where

import           Lib

problem50 :: Int
problem50 = head $ maximumOn length $ map consecutive $ take 10 primes

consecutive :: Int -> [Int]
consecutive p = dropWhile (not . isPrime) $ reverse $ takeWhile (< 1_000_000) $ scanl1 (+) $ dropWhile (< p) primes

