module Problems.Problem1 (problem1) where

import           Lib

problem1 :: Int
problem1 = sum' $ filter (\x -> mod x 5 == 0 || mod x 3 == 0) [1..(1000-1)]

