module Problems.Problem39 (problem39) where

import           Lib

problem39 :: Int
problem39 = maximumOn solveForP [12..1000]

solveForP :: Int -> Int
solveForP p = length $
  [(a, b, c) |
   a <- [3..p-1],
   b <- [4..p-a],
   let c  = p-a-b,
   a < b, b < c, a+b < p,
   a*a + b*b == c*c
  ]

