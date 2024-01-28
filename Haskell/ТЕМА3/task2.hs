-- Определите функцию secondlastlist. Эта функция берет список списков и возвращает последние элементы каждого, объединенные  в список

secondlastlist :: [[a]] -> [a]
secondlastlist [] = []
secondlastlist (x:xs) | length x == 0 = secondlastlist xs
                      | otherwise = last x : secondlastlist xs

main = do
  let l = [[1], [], [4,5,6]] 
  print(secondlastlist l)
