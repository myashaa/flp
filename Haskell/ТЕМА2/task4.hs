-- position (L,A)- возвращает номер первого вхождения заданного атома  А в список L

position :: Eq a => [a] -> a -> Int
position [] _ = -1
position l a = head [x | (x,y) <- zip [0..] l, y == a]

main = do
  let l = [1, 2, 3]
  let a = 3
  print(position l a)
