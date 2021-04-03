{-# LANGUAGE NumericUnderscores #-}
module Problems.Problem206 where

import           Lib

problem206 :: Int
problem206 = headThat isValid [1010101010 .. 1389026623]

isValid :: Int -> Bool
isValid = go 0 . isquare
  where
    correct = [0,9,8,7,6,5,4,3,2,1]
    go 10 _ = True
    go i x  = x `mod` 10 == correct !! i && go (i+1) (x `div` 100)
