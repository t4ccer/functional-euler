{-# LANGUAGE NumericUnderscores #-}
module Problems.Problem2 where

import           Lib

problem2 :: Int
problem2 = sum' $ takeWhile (<4_000_000) $ filter even fibs

