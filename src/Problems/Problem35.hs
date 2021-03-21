{-# LANGUAGE NumericUnderscores #-}
module Problems.Problem35 (problem35) where

import           Lib

problem35 :: Int
problem35 = count isCircularPrime [2..999_999]

isCircularPrime :: Int -> Bool
isCircularPrime = all (isPrime . read) . rotations . show

rotations :: Eq a => [a] -> [[a]]
rotations xs = (xs :) $ takeWhile (/=xs) $ tail $ iterate rotate xs

rotate :: [a] -> [a]
rotate n = last n : init n
