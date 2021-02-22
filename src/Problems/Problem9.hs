module Problems.Problem9 where

import           Lib

problem9 :: Int
problem9 = solveOne 1000

solveOne :: Int -> Int
solveOne p = prod3 $ head $ [(x, y, z) | x <- [1..p], y <- [1..p], z <- [p-x-y] , x^(2 :: Int) + y^(2 :: Int) == z^(2 :: Int)]

