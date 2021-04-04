module Problems.Problem686  where

import           Lib

problem686 :: Int
problem686 = p 123 678910

p :: Int -> Int -> Int
p l n = (!!(n - 1)) $ filter ((==l) . firstDigs len) $ dropWhile (\x -> d x < len) [1..]
  where
    len = length $ show l

-- https://math.stackexchange.com/questions/2006159/leading-digits-of-large-power-of-2/2006181#2006181?newreg=122e49d7b20840cbbee81541a60eae1e

-- | First k digits in 2^n. Returns wrong answer when d n < k
firstDigs :: Int -> Int -> Int
firstDigs k n = floor(10 ** (fromIntegral n * logBase 10 2 - fromIntegral (d n) + fromIntegral k))

-- | Number of digits (in base 10) in 2^n
d :: Int -> Int
d n = 1 + floor(fromIntegral n * logBase 10 2)
