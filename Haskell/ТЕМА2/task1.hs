oddEven :: [Int] -> [Int]
oddEven []  = []
oddEven [x] = [x]
oddEven (x:y:xs) = y:x:(oddEven xs)

main = do
  let input = [2,5,7,9,1,8] 
  print(oddEven input)
