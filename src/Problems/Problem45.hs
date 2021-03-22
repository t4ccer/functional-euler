module Problems.Problem45 where

import           Lib

problem45 :: Int
problem45 = isect3 triangleNums pentagonalNums hexagonalNums !! 2

triangleNums :: [Int]
triangleNums = scanl1 (+) [1..]

pentagonalNums :: [Int]
pentagonalNums = scanl1 (+) [1,4..]

hexagonalNums :: [Int]
hexagonalNums = scanl1 (+) [1,5..]

