Название: splitAt    
Тип: Int -> [a] -> ([a], [a])   
Описание: разбивает список на элементы, возвращая полученные два списка в кортеже  
Примеры:  
```
print(mySplitAt 2 [1,2,3,4,5])
print(mySplitAt 2 [1])
print(mySplitAt 10 [1,2,3,4,5])
```
![image](https://github.com/myashaa/flp/assets/79213041/35acdce7-cfa6-4b60-950a-159b3920f7ac)

Реализация: 
```
mySplitAt :: Int -> [a] -> ([a], [a])
mySplitAt n xs
  | n < 0 = error "invalid index"
  | n == 0 = ([], xs)
  | n > length xs = (xs, [])
  | otherwise = (take n xs, drop n xs)
```

---
Название: insert      
Тип: Ord a => a -> [a] -> [a]    
Описание: возвращает новый список, похожий на старый, только со вставленными ключом и значением  
Примеры:  
```
print(myInsert 2 [1,2,3,4,5])
print(myInsert 2 [])
print(myInsert 2 [1])
```
![image](https://github.com/myashaa/flp/assets/79213041/525998ca-9e6b-41d1-9cff-1988c9683a9d)

Реализация: 
```
myInsert :: Ord a => a -> [a] -> [a]
myInsert x [] = [x]
myInsert x (y:ys)
  | x <= y    = x : y : ys
  | otherwise = y : myInsert x ys 
```

---
Название: intersection        
Тип: (Eq a) => [a] -> [a] -> [a]      
Описание: элементы входящие в оба списка   
Примеры:  
```
print(myIntersection1 [1..5] [3,4,5])
print(myIntersection1 [] [3,4,5])
print(myIntersection1 [1..100] [101])
```
![image](https://github.com/myashaa/flp/assets/79213041/16d2221b-ca08-4613-a3e3-c50ff00e8005)

Реализация: 
```
myIntersection1 :: (Eq a) => [a] -> [a] -> [a]
myIntersection1 [] _ = []
myIntersection1 (x:xs) ys
    | elem x ys = x : myIntersection1 xs ys
    | otherwise = myIntersection1 xs ys

myIntersection2 :: (Eq a) => [a] -> [a] -> [a]
myIntersection2 a b = Data.List.filter (\x -> elem x b) a
```

---
Название: isSpace          
Тип: Char -> Bool       
Описание: проверка, что символ является пробелом     
Примеры:  
```
print(myIsSpace ' ')
print(myIsSpace '\n')
print(myIsSpace '@')
```
![image](https://github.com/myashaa/flp/assets/79213041/33229cc1-ca79-43ec-9575-0769a3d0a716)

Реализация: 
```
myIsSpace :: Char -> Bool
myIsSpace c = c `elem` " \t\n\r\f\v"
```

---
Название: unlines            
Тип: [String] -> String      
Описание: объединяет строки после добавления завершающего символа новой строки к каждой      
Примеры:  
```
print(myUnlines ["one", "two", "three"])
print(myUnlines ["one"])
print(myUnlines [])
```
![image](https://github.com/myashaa/flp/assets/79213041/9717eea7-1b89-4eb7-935c-026806bf86af)

Реализация: 
```
myUnlines :: [String] -> String
myUnlines [] = ""
myUnlines (x:xs) = x ++ "\n" ++ myUnlines xs
```
