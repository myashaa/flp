-- Data.String
-- unlines is an inverse operation to lines. It joins lines, after appending a terminating newline to each.

myUnlines :: [String] -> String
myUnlines [] = ""
myUnlines (x:xs) = x ++ "\n" ++ myUnlines xs

main = do
  print(unlines ["one", "two", "three"])
  print(unlines ["one"])
  print(unlines [])
  
  print(myUnlines ["one", "two", "three"])
  print(myUnlines ["one"])
  print(myUnlines [])
