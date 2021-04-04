{-# LANGUAGE ScopedTypeVariables #-}
module Problems.Problem686  where

import           Lib

problem686 :: Int
problem686 = (!!(678910 - 1)) $ filter ((==123) . firstDigs 3) [7,8..] -- filter ((==123) . firstDigs 3)

-- https://math.stackexchange.com/questions/2006159/leading-digits-of-large-power-of-2/2006181#2006181?newreg=122e49d7b20840cbbee81541a60eae1e

firstDigs :: Int -> Int -> Int
firstDigs k n = floor(10 ** (fromIntegral n * logBase 10 2 - fromIntegral (d n) + fromIntegral k))

d :: Int -> Int
d n = 1 + floor(fromIntegral n * logBase 10 2)
