-- Data.Set
-- intersection function to see which elements they both share.
import Data.List
import Data.Set

myIntersection1 :: (Eq a) => [a] -> [a] -> [a]
myIntersection1 [] _ = []
myIntersection1 (x:xs) ys
    | elem x ys = x : myIntersection1 xs ys
    | otherwise = myIntersection1 xs ys

myIntersection2 :: (Eq a) => [a] -> [a] -> [a]
myIntersection2 a b = Data.List.filter (\x -> elem x b) a

main = do
  let list1 =  [1..5]
  let list2 = [3,4,5]
  let set1 = fromList (list1)
  let set2 = fromList (list2)
  
  print(intersection set1 set2)
  print(myIntersection1 list1 list2)
  print(myIntersection2 list1 list2)

  let list1 =  []
  let list2 = [3,4,5]
  let set1 = fromList (list1)
  let set2 = fromList (list2)
  
  print(intersection set1 set2)
  print(myIntersection1 list1 list2)
  print(myIntersection2 list1 list2)

  let list1 =  [1..100]
  let list2 = [101]
  let set1 = fromList (list1)
  let set2 = fromList (list2)

  print(intersection set1 set2)
  print(myIntersection1 list1 list2)
  print(myIntersection2 list1 list2)
