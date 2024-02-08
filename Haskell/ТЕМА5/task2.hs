-- Скопировать информацию из одного файла в другой, заменив знаки  пунктуации заданным с клавиатуры  символом. Имена файлов указываются в командной строке.

import System.IO
import Data.Char

replacePunctuation :: Char -> String -> String
replacePunctuation replaceChar = map (\c -> if isPunctuation c then replaceChar else c)

main = do
  hSetBuffering stdout NoBuffering
  putStr "Введите название входного файла:"
  inputFile <- getLine
  putStr "Введите название выходного файла:"
  outputFile <- getLine
  putStr "Введите символ, котрый будет использоваться для замены:"
  replaceChar <- getChar

  inputText <- readFile inputFile
  writeFile outputFile (replacePunctuation replaceChar inputText)
