module Filtering where

multiplesOfThree = filter (\x -> (rem x 3 == 0)) [1..30]

numMultiples :: Int
numMultiples = length multiplesOfThree

isArticle :: String -> Bool
isArticle x = not $ elem x ["the", "a", "and", "an"]

stripArticles :: String -> [String]
stripArticles x = filter isArticle $ words x