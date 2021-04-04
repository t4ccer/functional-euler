{-# LANGUAGE NumericUnderscores #-}
module Problems.Problem92 (problem92) where

import           Data.Char
import           Lib

problem92 :: Int
problem92 = count ((== 89) . lastElem) [1..9_999_999]

lastElem :: Int -> Int
lastElem 1  = 1
lastElem 89 = 89
lastElem x  = lastElem $ sum' $ map (isquare . subtract 48 . ord) $ show x
