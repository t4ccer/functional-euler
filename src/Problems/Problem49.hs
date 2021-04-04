{-# LANGUAGE TypeApplications #-}
module Problems.Problem49 (problem49) where

import           Data.List
import           Lib

problem49 :: Int
problem49 = read @Int $ concatMap show $ head $ filter (/= [1487, 4817, 8147]) seqs

seqs :: [[Int]]
seqs = filter (all isPrime) $ filter arePerms $ [[a, a+r, a+r+r] | a <- [1000..9999], r <- [1..4500], a + r + r <= 9999]

arePerms :: [Int] -> Bool
arePerms = allTheSame . map (sort . show)
