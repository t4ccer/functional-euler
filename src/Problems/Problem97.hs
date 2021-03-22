{-# OPTIONS_GHC -Wno-type-defaults #-}
module Problems.Problem97 (problem97) where

import           Lib

problem97 :: Int
problem97 = read $ reverse $ take 10 $ reverse $ show (28433*(2^7830457)+1)
