-- Data.Char
-- isSpace checks whether a character is a white-space characters. That includes spaces, tab characters, newlines, etc.
import Data.Char

myIsSpace :: Char -> Bool
myIsSpace c = c `elem` " \t\n\r\f\v"

main = do
  print(isSpace ' ')
  print(isSpace '\n')
  print(isSpace '@')
  
  print(myIsSpace ' ')
  print(myIsSpace '\n')
  print(myIsSpace '@')
