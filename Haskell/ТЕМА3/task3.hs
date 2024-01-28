-- Определите функцию myunion, которая находит объединение двух списков. Объединением двух списков будет список содержащий элементы, которые есть по крайней мере в одном из списков

import Data.List (nub)

union :: [a] -> [a] -> [a] 
union [] ys = ys 
union xs [] = xs 
union (x:xs) (y:ys) = x : y : union xs ys

removeDuplicates :: Eq a => [a] -> [a] 
removeDuplicates = nub

myunion :: Eq a => [a] -> [a] -> [a]
myunion l1 l2 = removeDuplicates (union l1 l2)

main = do
  let l1 = [1,2,3,3,4]
  let l2 = [4,5,6]
  print(myunion l1 l2)
