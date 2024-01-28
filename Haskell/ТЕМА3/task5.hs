-- Напишите функцию, берущую список списков и возвращающую список из N -х элементов подсписков с помощью функций map и (!!)

f :: Int -> [[a]] -> [a]
f n l = map (\x -> x !! n) l

main = do
  let n = 1
  let l = [[1,2,3], [4,5,6,7], [8,9]]
  print(f n l)
