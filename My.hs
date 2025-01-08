{-
-- EPITECH PROJECT, 2025
-- PARADIGM-DAY01
-- File description:
-- My.hs
-}
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use foldr" #-}

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
myMax x y | x >= y = x
          | x <  y = y

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

myHead :: [a] -> a
myHead []     = error "Empty list"
myHead (a:as) = a

myTail :: [a] -> [a]
myTail []     = error "Empty list"
myTail (a:as) = as

myLength :: [a] -> Int
myLength []     = 0
myLength (a:as) = 1 + myLength as

myNth :: [a] -> Int -> a
myNth (a:as) 0          = a
myNth [] b              = error "Index too large"
myNth (a:as) b | b <  0 = error "Index cannot be negative"
               | b >  0 = myNth as (b - 1)

myTake :: Int -> [a] -> [a]
myTake b [] = []
myTake 0 _ = []
myTake b (a:as) = a : myTake (b - 1) as

myDrop :: Int -> [a] -> [a]
myDrop b [] = []
myDrop 0 a = a
myDrop b (_:as) = myDrop (b -1) as

myAppend :: [a] -> [a] -> [a]
myAppend [] b = b
myAppend a [] = a
myAppend (a:as) b = a : myAppend as b

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (a:as) = myAppend (myReverse as) [a]

myInit :: [a] -> [a]
myInit [] = error "Empty list"
myInit [a] = []
myInit (a:as) = a : myInit as

myLast :: [a] -> a
myLast [] = error "Empty list"
myLast [a] = a
myLast (a:as) = myLast as

myZip :: [a] -> [b] -> [(a, b)]
myZip _ [] = []
myZip [] _ = []
myZip (a:as) (b:bs) = (a, b) : myZip as bs

myUnzip :: [(a, b)] -> ([a], [b])
myUnzip ((a, b):ts) = (a:as, b:bs) where (as, bs) = myUnzip ts

myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (e:es) = f e : myMap f es

myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter f (e:es) | f e = e : myFilter f es
                  | not (f e) = myFilter f es

myFoldl :: (b -> a -> b) -> b -> [a] -> b
myFoldl f v [] = error "Empty list"
myFoldl f v [l] = f v l
myFoldl f s (l:ls) = myFoldl f v ls where v = f s l

myFoldr :: (a -> b -> b) -> b -> [a] -> b
myFoldr f v [] = error "Empty list"
myFoldr f v [l] = f l v
myFoldr f s (l:ls) = f l v where v = myFoldr f s ls
