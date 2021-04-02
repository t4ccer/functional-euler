{-# OPTIONS_GHC -Wno-type-defaults #-}
module Problems.Problem53 (problem53) where

import           Lib

problem53 :: Int
problem53 = count (>1000000) [choose n r | n <- [1..100], r <- [1..n]]

