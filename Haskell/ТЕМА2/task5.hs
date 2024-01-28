-- Найти сумму  F(n)=∑i=1ni

f :: Int -> Int
f n = sum [1..n]

main = do
  let n = 5
  print(f n)
