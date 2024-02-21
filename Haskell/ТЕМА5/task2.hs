-- Скопировать информацию из одного файла в другой, заменив знаки  пунктуации заданным с клавиатуры  символом. Имена файлов указываются в командной строке.

import System.IO
import Data.Char
import System.Directory
import System.Environment

replacePunctuation :: Char -> String -> String
replacePunctuation replaceChar = map (\c -> if isPunctuation c then replaceChar else c)

main :: IO()
main = do
  args <- getArgs
  if length args /= 3
    then putStrLn "Неверное количество входных параметров."
    else do
      let 
        inputFile = args !! 0
        outputFile = args !! 1
        replaceChar = head $ args !! 2
      srcExists <- doesFileExist inputFile
      if not srcExists
        then putStrLn "Входной файл не найден."
        else do
          inputText <- readFile inputFile
          writeFile outputFile (replacePunctuation replaceChar inputText)
