-- Вывести на экран сформированный список, данные для которого вводятся с клавиатуры: начальное значение, количество элементов, кратность.

main = do
    putStrLn "Введите начальное значение:"
    start <- readLn
    putStrLn "Введите количество элементов:"
    count <- readLn
    putStrLn "Введите кратность:"
    step <- readLn

    --let count = 3
    --let start = 14
    --let step = 7
    let isMultiple x = (mod x step) /= 0
    let getMultipleList start count step = take count (filter isMultiple [start, start+1 ..])
    
    let myList = getMultipleList start count step
    putStrLn "Список:"
    print myList
