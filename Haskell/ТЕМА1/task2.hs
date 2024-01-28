-- Используя функции head и tail получить элемент b из следующих списков

main = do
  let input1 = ['a', 'b', 'c']
  let getB1 x = head (tail x)
  print(getB1 input1)

  let input2 = [['a', 'b'], ['c','d']]
  let getB2 x = head (tail (head x))
  print(getB2 input2)

  let input3 = [['a', 'c', 'd'], ['a','b']]
  let getB3 x = head (tail (head (tail x)))
  print(getB3 input3)

  let input4 = [['a','d'], ['b', 'c']]
  let getB4 x = head (head (tail x))
  print(getB4 input4)
