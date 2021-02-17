module Problems.Problem48 where

problem48 :: Integer
problem48 = flip mod 10000000000 $ sum $ map (\x -> x^x) [1..1000]

