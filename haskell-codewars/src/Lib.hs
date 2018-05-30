module Lib
    ( someFunc,
    solution,
    solution2ListComprehension
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"


solution :: Integer -> Integer
solution int =
    sum $ filter (\x -> x `mod` 3 == 0 || x `mod` 5 == 0) [1..(int - 1)]

solution2ListComprehension :: Integer -> Integer
solution2ListComprehension number = sum [n | n <- [1..number - 1], n `mod` 3 == 0 || n `mod` 5 == 0]

