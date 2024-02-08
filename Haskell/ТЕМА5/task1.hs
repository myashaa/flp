-- Вывести на экран сформированный список, данные для которого вводятся с клавиатуры: начальное значение, количество элементов, кратность.

filterByMultiples :: Int -> [Int] -> [Int]
filterByMultiples number = filter (\x -> mod x number == 0)

main = do
  putStrLn "Введите начальное значение:"
  start <- readLn
  putStrLn "Введите количество элементов:"
  count <- readLn
  putStrLn "Введите кратность:"
  divisor <- readLn

  let getMultipleList start count divisor = take count (filterByMultiples divisor [start, start + 1 ..])
  let myList = getMultipleList start count divisor

  putStrLn "Список:"
  print myList
