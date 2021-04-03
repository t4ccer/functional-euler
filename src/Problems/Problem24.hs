{-# LANGUAGE NumericUnderscores #-}
module Problems.Problem24 (problem24) where

import           Data.List
import           Lib

problem24 :: Int
problem24 = read $ concatMap show $ (!!999_999) $ sort $ permutations [0..9]

