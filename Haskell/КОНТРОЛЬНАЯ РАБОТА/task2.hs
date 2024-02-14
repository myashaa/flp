-- Напишите функцию elemIndices :: Eq a => a -> [a] -> [Int], которая находит, под какими индексами в списке встречается заданный элемент

import Data.List (findIndices)

elemIndices :: Eq a => a -> [a] -> [Int]
elemIndices x xs = findIndices (==x) xs

main = do
  print(elemIndices 'a' "banana")
  print(elemIndices 't' "banana")
  print(elemIndices 1 [2,1,3,1,4,1])
  print(elemIndices 7 [2,1,3,1,4,1])
