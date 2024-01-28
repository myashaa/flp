-- Найти сумму F(n)=∑i=1nn−i

f :: Int -> Int
f n = sum [n - x | x <- [1..n]]

main = do
  let n = 5
  print(f n)
