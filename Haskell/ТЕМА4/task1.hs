-- Data.List
-- splitAt takes a number and a list. It then splits the list at that many elements, returning the resulting two lists in a tuple.

len :: [a] -> Int
len [] = 0
len (_:xs) = 1 + len xs

mySplitAt :: Int -> [a] -> ([a], [a])
mySplitAt n xs
  | n < 0 = error "invalid index"
  | n == 0 = ([], xs)
  | n > length xs = (xs, [])
  | otherwise = (take n xs, drop n xs)

main = do
  print(splitAt 2 [1,2,3,4,5])
  print(splitAt 2 [1])
  print(splitAt 10 [1,2,3,4,5])
  
  print(mySplitAt 2 [1,2,3,4,5])
  print(mySplitAt 2 [1])
  print(mySplitAt 10 [1,2,3,4,5])
