module Problems.Problem16 (problem16) where

import           Data.Char
import           Lib

problem16 :: Int
problem16 = solveOne 1000

solveOne :: Int -> Int
solveOne = sum' . fmap (subtract (ord '0') . ord) . show . (2^)
