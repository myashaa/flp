-- insert (L,A,n) -  функция включения в список L заданного атома А на определенную позицию n
insert :: [a] -> a -> Int -> [a]
insert l a n = (take n l) ++ [a] ++ (drop n l)

main = do
  let input = [1, 3, 4, 5]
  let atom = 2
  let position = 1
  print(insert input atom position)
