module Problems.Problem25 (problem25) where

import           Lib

problem25 :: Int
problem25 = fst $ head $ filter ((1000<=) . snd) $ zipWith (\i v -> (i, length $ show v)) [1..] $ drop 1 fibsL
