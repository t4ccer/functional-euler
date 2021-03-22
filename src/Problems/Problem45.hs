module Problems.Problem45 where

import           Lib

problem45 :: Int
problem45 = (!!2) $ filter (\n -> isIn pentagonalNums n && isIn hexagonalNums n) triangleNums

triangleNums :: [Int]
triangleNums = scanl1 (+) [1..]

pentagonalNums :: [Int]
pentagonalNums = scanl1 (+) [1,4..]

hexagonalNums :: [Int]
hexagonalNums = scanl1 (+) [1,5..]

isIn :: Ord a => [a] -> a -> Bool
isIn ns n = elem n $ takeWhile (<=n) ns
