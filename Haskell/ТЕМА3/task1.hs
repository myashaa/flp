-- Определите функцию listnums. Она берет численный аргумент n и возвращает список всех чисел от n до 1, включительно

listnums :: Int -> [Int]
listnums n | n <= 0 = []
           | n == 1 = [1]
           | otherwise = n : listnums (n - 1)

main = do
  let n = 10 
  print(listnums n)
