module Lib where

import           Data.Foldable
someFunc :: IO ()
someFunc = putStrLn "someFunc"

sum' :: (Foldable t, Num a) => t a -> a
sum' = foldl' (+) 0

product' :: (Foldable t, Num a) => t a -> a
product' = foldl' (*) 1

selfPower :: Num a => Int -> a
selfPower n = product' $ replicate n (fromIntegral n)

solve :: (Show a) => String -> a -> IO ()
solve label f = do
  putStr label
  putStr ": "
  print f

