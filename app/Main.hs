module Main where

import           Lib
import           Problems.Problem1
import           Problems.Problem2
import           Problems.Problem3
import           Problems.Problem4
import           Problems.Problem46
import           Problems.Problem48
import           Problems.Problem7

main :: IO ()
main = do
  solve "Problem 1" problem1
  solve "Problem 2" problem2
  solve "Problem 3" problem3
  solve "Problem 4" problem4
  solve "Problem 7" problem7
  solve "Problem 46" problem46
  solve "Problem 48" problem48
