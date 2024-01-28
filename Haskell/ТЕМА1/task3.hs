-- Список нечётных натуральных чисел. Количество чисел в списке = 20

main = do
  let isOdd x = (mod x 2) /= 0
  let count = 20

  let oddNatList1 = [1,3..39]
  print(oddNatList1)

  let oddNatList2 = filter odd [1..39]
  print(oddNatList2)

  let oddNatList3 = filter isOdd [1..39]
  print(oddNatList3)

  let getOddNatList1 x = [1,3..2 * x]
  print(getOddNatList1 count)

  let getOddNatList2 x = filter odd [1..2 * x]
  print(getOddNatList2 count)

  let getOddNatList3 x = filter isOdd [1..2 * x]
  print(getOddNatList3 count)
