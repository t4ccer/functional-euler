module Problems.Problem56 (problem56) where

import           Data.Char
import           Lib

problem56 :: Int
problem56 = maximum [sum' $ map (subtract 48 . ord) $ show $ a^b | a <- [1..100], b <- [1..100]]

