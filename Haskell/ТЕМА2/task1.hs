-- oddEven(L) -  функция перестановки местами соседних элементов списка L

oddEven :: [Int] -> [Int]
oddEven []  = []
oddEven [l] = [l]
oddEven (x:y:xs) = y:x:(oddEven xs)

main = do
  let l = [2,5,7,9,1,8] 
  print(oddEven l)
