import Data.List (findIndices, sortOn)
import Data.Char (isAlphaNum, toLower)
import Data.Map (fromListWith, toList)

-- 1 задание
partitionN :: [a] -> Int -> [[a]]
partitionN xs n
  | n <= 0 = error "Количество подсписков должно быть положительным числом"
  | otherwise = split xs n
  
split :: [a] -> Int -> [[a]]
split [] _ = []
split xs n = take m xs : split (drop m xs) (n - 1)
  where m = (length xs + n) `div` n

-- 2 задание
elemIndices :: Eq a => a -> [a] -> [Int]
elemIndices x xs = findIndices (==x) xs

-- 3 задание
powerSublists :: Int -> Int -> [[Int]]
powerSublists n maxNum = [[x^i | i <- [1..maxNum]] | x <- [1..n]]

-- 4 задание
countWords :: String -> [(String, Int)]
countWords str = 
  let cleanWord word = map toLower $ filter isAlphaNum word
      wordsList = words str
      cleanedWords = map cleanWord wordsList
      wordCount = fromListWith (+) [(word, 1) | word <- cleanedWords]
  in sortOn (negate . snd) (toList wordCount)

processFile :: FilePath -> FilePath -> IO ()
processFile inputFile outputFile = do
  input <- readFile inputFile
  let wordCountPairs = countWords input
      formattedPairs = map (\(word, count) -> word ++ ":" ++ show count) wordCountPairs
      outputContent = unlines formattedPairs
  writeFile outputFile outputContent
 
main :: IO ()
main = do
  -- 1 задание
  print(partitionN [1,2,3,4,5,6,7] 3)
  print(partitionN [1,2,3,4,5,6,7] 4)
  print(partitionN [1,2,3,4,5,6,7] 8)
  print(partitionN [1] 3)
  print(partitionN [1,2,3,4,5,6,7] 1)

  -- 2 задание
  print(elemIndices 'a' "banana")
  print(elemIndices 't' "banana")
  print(elemIndices 1 [2,1,3,1,4,1])
  print(elemIndices 7 [2,1,3,1,4,1])

  -- 3 задание
  print(powerSublists 4 2)
  print(powerSublists 2 4)
  print(powerSublists 0 2)
  print(powerSublists 2 0)

  -- 4 задание
  putStrLn "Введите название входного файла "
  inputFile <- getLine
  putStrLn "Введите название выходного файла: "
  outputFile <- getLine
  processFile inputFile outputFile
