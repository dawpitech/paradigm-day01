import Distribution.Simple.Utils (xargs)
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

myMin :: Int -> Int -> Int
myMin x y | x >= y = y
          | x <  y = x

myMax :: Int -> Int -> Int
myMax x y | x >= y = y
          | x <  y = x

myTuple :: a -> b -> (a, b)
myTuple a b = (a, b)

myTruple :: a -> b -> c -> (a, b, c)
myTruple a b c = (a, b, c)

myFst :: (a, b) -> a
myFst (a, b) = a

mySnd :: (a, b) -> b
mySnd (a, b) = b

mySwap :: (a, b) -> (b, a)
mySwap (a, b) = (b, a)
