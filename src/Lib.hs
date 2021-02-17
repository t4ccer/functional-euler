{-# LANGUAGE ScopedTypeVariables #-}
module Lib where

import           Data.Foldable
import           GHC.Float.RealFracMethods
someFunc :: IO ()
someFunc = putStrLn "someFunc"

sum' :: (Foldable t, Num a) => t a -> a
sum' = foldl' (+) 0

product' :: (Foldable t, Num a) => t a -> a
product' = foldl' (*) 1

selfPower :: Num a => Int -> a
selfPower n = product' $ replicate n (fromIntegral n)

solve :: (Show a) => String -> a -> IO ()
solve label f = do
  putStr label
  putStr ": "
  print f

isqrt :: Integral a => a -> Int
isqrt = roundDoubleInt . sqrt . fromIntegral

isPrime :: Int -> Bool
isPrime k = (k > 1) && null [ x | x <- [2..isqrt k], k `mod` x == 0]

isComposite :: Int -> Bool
isComposite = not . isPrime

primes :: [Int]
primes = filter isPrime [2..]

isquare :: Num a => a -> a
isquare x = x * x

double :: Num a => a -> a
double x = 2 * x

lstProd :: [a] -> [b] -> [(a, b)]
lstProd xs ys = [(x, y) | x <- xs, y <- ys]
