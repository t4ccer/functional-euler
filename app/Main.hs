module Main where

import           Lib
import           Problems.Problem1
import           Problems.Problem10
import           Problems.Problem14
import           Problems.Problem15
import           Problems.Problem16
import           Problems.Problem2
import           Problems.Problem25
import           Problems.Problem27
import           Problems.Problem3
import           Problems.Problem39
import           Problems.Problem4
import           Problems.Problem42
import           Problems.Problem46
import           Problems.Problem48
import           Problems.Problem5
import           Problems.Problem50
import           Problems.Problem6
import           Problems.Problem7
import           Problems.Problem8
import           Problems.Problem9
-- INSERT_IMP

main :: IO ()
main = do
-- INSERT_CALL
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
  solve "Problem 14" problem14
  solve "Problem 15" problem15
  solve "Problem 16" problem16
  solve "Problem 25" problem25
  solve "Problem 27" problem27
  solve "Problem 39" problem39
  solve "Problem 42" problem42
  solve "Problem 46" problem46
  solve "Problem 48" problem48
  solve "Problem 50" problem50
