module Main where

import           Lib
import           Problems.Problem2
import           Problems.Problem46
import           Problems.Problem48

main :: IO ()
main = do
  solve "Problem 2" problem2
  solve "Problem 46" problem46
  solve "Problem 48" problem48
