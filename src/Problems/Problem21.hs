{-# LANGUAGE NumericUnderscores #-}
module Problems.Problem21 (problem21) where

import           Data.Maybe
import           Lib

problem21 :: Int
problem21 = sum' $ mapMaybe findPair [2..9999]

findPair :: Int -> Maybe Int
findPair a
  | a == c && a /= b = Just a
  | otherwise = Nothing
  where
    b = d a
    c = d b

d :: Int -> Int
d n = sum' $ filter (isDivisorOf n) [1..n-1]
