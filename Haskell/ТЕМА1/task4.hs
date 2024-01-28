-- Список треугольных чисел Ферма. Колво чисел = 50

triangular :: Int -> Int
triangular x = x * (x + 1) `div` 2

tFermatList :: Int -> [Int]
tFermatList x = map triangular [1..x]

main = do  
  let count = 50 
  print(tFermatList count)
