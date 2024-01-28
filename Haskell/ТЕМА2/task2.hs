-- insert (L,A,n) -  функция включения в список L заданного атома А на определенную позицию n

insert :: [a] -> a -> Int -> [a]
insert l a n = (take n l) ++ [a] ++ (drop n l)

main = do
  let l = [1, 3, 4, 5]
  let a = 2
  let n = 1
  print(insert l a n)
