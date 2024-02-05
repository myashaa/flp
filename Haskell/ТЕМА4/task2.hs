-- Data.Map
-- insert takes a key, a value and a map and returns a new map that's just like the old one, only with the key and value inserted.

myInsert :: Ord a => a -> [a] -> [a]
myInsert x [] = [x]
myInsert x (y:ys)
  | x <= y    = x : y : ys
  | otherwise = y : myInsert x ys 

main = do
  --print(Data.Map.insert 2 [1,2,3,4,5])
  --print(Data.Map.insert 2 [])
  --print(Data.Map.insert 2 [1] Data.Map.empty)
  
  print(myInsert 2 [1,2,3,4,5])
  print(myInsert 2 [])
  print(myInsert 2 [1])
