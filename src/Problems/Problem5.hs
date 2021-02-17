module Problems.Problem5 (problem5) where

problem5 :: Int
problem5 = foldl1 lcm [1..20]
