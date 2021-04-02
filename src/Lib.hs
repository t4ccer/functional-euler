{-# LANGUAGE ScopedTypeVariables #-}
module Lib where

import           Data.Foldable
import           Data.Function
import           GHC.Float.RealFracMethods

someFunc :: IO ()
someFunc = putStrLn "someFunc"

fact :: (Num a, Enum a) => a -> a
fact n = product' [1..n]

choose :: Integral a => a -> a -> a
choose n k = div (fact n) (fact k * fact (n-k))

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
primes = 2 : filter isPrime [3,5..]

isquare :: Num a => a -> a
isquare x = x * x

double :: Num a => a -> a
double x = 2 * x

lstProd :: [a] -> [b] -> [(a, b)]
lstProd xs ys = [(x, y) | x <- xs, y <- ys]

fibs :: [Int]
fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

fibsL :: [Integer]
fibsL = 0 : 1 : zipWith (+) fibsL (tail fibsL)

isDivisorOf :: Integral a => a -> a -> Bool
isDivisorOf a b = a `mod` b == 0

isPalindrome :: Show a => a -> Bool
isPalindrome n = s == reverse s
  where s = show n

sum3 :: Num a => (a, a, a) -> a
sum3 (a,b,c) = a+b+c

prod3 :: Num a => (a, a, a) -> a
prod3 (a,b,c) = a*b*c

maximumOn :: (Foldable t, Ord a1) => (a2 -> a1) -> t a2 -> a2
maximumOn p = maximumBy (compare `on` p)

count :: (a -> Bool) -> [a] -> Int
count p = length . filter p

headThat :: (a -> Bool) -> [a] -> a
headThat p = head . filter p

isect3 :: Ord a => [a] -> [a] -> [a] -> [a]
isect3 xs ys zs = isect zs $ isect xs ys

-- Stolen from data-ordlist

-- |  The 'isect' function computes the intersection of two ordered lists.
-- An element occurs in the output as many times as the minimum number of
-- occurrences in either input.  If either input is a set,  then the output
-- is a set.
--
-- > isect [ 1,2, 3,4 ] [ 3,4, 5,6 ]   == [ 3,4 ]
-- > isect [ 1, 2,2,2 ] [ 1,1,1, 2,2 ] == [ 1, 2,2 ]
isect :: Ord a => [a] -> [a] -> [a]
isect = isectBy compare

-- |  The 'isectBy' function is the non-overloaded version of 'isect'.
isectBy :: (a -> b -> Ordering) -> [a] -> [b] -> [a]
isectBy cmp = loop
  where
     loop [] _ys  = []
     loop _xs []  = []
     loop (x:xs) (y:ys)
       = case cmp x y of
          LT ->     loop xs (y:ys)
          EQ -> x : loop xs ys
          GT ->     loop (x:xs) ys

