module Main where

import           Lib
import           Problems.Problem1
import           Problems.Problem10
import           Problems.Problem15
import           Problems.Problem16
import           Problems.Problem2
import           Problems.Problem3
import           Problems.Problem4
import           Problems.Problem46
import           Problems.Problem48
import           Problems.Problem5
import           Problems.Problem6
import           Problems.Problem7
import           Problems.Problem8
import           Problems.Problem9

main :: IO ()
main = do
  solve "Problem 1" problem1
  solve "Problem 2" problem2
  solve "Problem 3" problem3
  solve "Problem 4" problem4
  solve "Problem 5" problem5
  solve "Problem 6" problem6
  solve "Problem 7" problem7
  solve "Problem 8" problem8
  solve "Problem 9" problem9
  solve "Problem 10" problem10
  solve "Problem 15" problem15
  solve "Problem 16" problem16
  solve "Problem 46" problem46
  solve "Problem 48" problem48
