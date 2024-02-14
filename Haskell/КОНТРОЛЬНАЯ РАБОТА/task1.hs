-- Напишите функцию partitionN :: [a] -> Int ->[[a]], которая разбивает заданный список на указанное количество подсписков. N-1 подсписков должны иметь одинаковую длину,последний элемент списка списков может содержать меньшее количество элементов

partitionN :: [a] -> Int -> [[a]]
partitionN xs n
  | n <= 0 = error "Количество подсписков должно быть положительным числом"
  | otherwise = split xs n

split :: [a] -> Int -> [[a]]
split [] _ = []
split xs n = take m xs : split (drop m xs) (n - 1)
  where m = (length xs + n) `div` n

main = do
print(partitionN [1,2,3,4,5,6,7] 3)
print(partitionN [1,2,3,4,5,6,7] 4)
print(partitionN [1] 3)
print(partitionN [1,2,3,4,5,6,7] 1)
print(partitionN [1,2,3,4,5,6,7] 0)
                
