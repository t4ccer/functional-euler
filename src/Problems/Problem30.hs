module Problems.Problem30 (problem30) where

import           Lib

problem30 :: Int
problem30 = sum' $ filter isValid [10..999999]

isValid :: Int -> Bool
isValid n = n == sum (map (^5) $ digs n)
