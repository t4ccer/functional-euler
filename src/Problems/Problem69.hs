{-# LANGUAGE NumericUnderscores #-}
module Problems.Problem69 (problem69) where

import           Lib

-- Just mine observation! :
-- n/φ(n) is increasing series when n is product of consecutive primes

problem69 :: Int
problem69 = last $ takeWhile (<=1_000_000) $ scanl1 (*) primes

