-- Список пирамидальных чисел Ферма. Колво чисел = 50

pyramidal :: Int -> Int
pyramidal x = (2 * x^3 + 3 * x^2 + x) `div` 6

pFermatList :: Int -> [Int]
pFermatList x = map pyramidal [1..x]

main = do
  let count = 50 
  print(pFermatList count)
