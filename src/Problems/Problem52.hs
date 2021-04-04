module Problems.Problem52 (problem52) where

import           Data.List
import           Lib

problem52 :: Int
problem52 = headThat isValid possibleSols

possibleSols :: [Int]
possibleSols = concat [[lim `div` 10 .. lim `div` 6] | n <- [1::Int ..], let lim = 10^n]

isValid :: Int -> Bool
isValid x = allTheSame [sort $ show $ n*x | n <- [2..6]]
