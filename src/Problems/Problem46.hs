module Problems.Problem46 (problem46) where

import           Lib

problem46 :: Int
problem46 = fst $ head $ filter (not . snd) $ map (\n -> (n, otherGoldbachsHolds n)) $ filter isComposite [3, 5..]

doubledSquares :: [Int]
doubledSquares = map (double . isquare) [1..]

otherGoldbachsHolds :: Int -> Bool
otherGoldbachsHolds n = elem n $ map (uncurry (+)) $ lstProd (takeWhile (n>) primes) (takeWhile (n>) doubledSquares)
