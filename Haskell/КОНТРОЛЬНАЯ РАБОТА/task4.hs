-- Напишите функцию, которая читает входной текстовый файл и выводит в выходной файл пары (слово:число), где слово - есть каждое уникальное слово файла, а число - количество вхождений этого слова. Пары должны быть отсортированы по убыванию чисел

import Data.Char (isAlphaNum, toLower)
import Data.List (sortOn)
import Data.Map (fromListWith, toList)

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
  putStrLn "Введите название входного файла "
  inputFile <- getLine
  putStrLn "Введите название выходного файла: "
  outputFile <- getLine
  processFile inputFile outputFile
