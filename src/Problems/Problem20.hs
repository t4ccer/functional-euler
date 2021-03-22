{-# OPTIONS_GHC -Wno-type-defaults #-}
module Problems.Problem20 (problem20) where

import           Lib

problem20 :: Int
problem20 = sum' $ fmap (read . pure) $ show $ fact 100

fact :: (Num a, Enum a) => a -> a
fact n = product' [1..n]
