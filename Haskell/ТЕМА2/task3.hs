--  listSumm(L1,L2) -  функция сложения элементов двух списков. Возвращает список , составленный из сумм элементов списков - параметров L1, L2. Учесть, что переданные списки могут быть разной длины

listSumm :: Num a => [a] -> [a] -> [a]
listSumm [] [] = []
listSumm xs [] = xs
listSumm [] ys = ys
listSumm (x:xs) (y:ys) = (x + y) : listSumm xs ys

main = do
  let l1 = [1, 3, 5, 7]
  let l2 = [2, 4, 6]
  print(listSumm l1 l2)
