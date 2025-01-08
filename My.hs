{-
-- EPITECH PROJECT, 2025
-- PARADIGM-DAY01
-- File description:
-- My.hs
-}

mySucc :: Int -> Int
mySucc x = x + 1

myIsNeg :: Int -> Bool
myIsNeg x = x < 0

myAbs :: Int -> Int
myAbs x | x >= 0 =  x
        | x <  0 = -x
