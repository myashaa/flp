### Задание 1  
```haskell
main = do
  let input = (( 1, 'a'), "abc")
  let getChar x = snd (fst x)
  print(getChar input)
```
![image](https://github.com/myashaa/flp/assets/79213041/ab1eea53-7a43-4152-81fa-217dccd6e96e)

---  
### Задание 2
1 )  
```haskell
main = do
  let input = ['a', 'b', 'c']
  let getB x = head (tail x)
  print(getB input)
```
![image](https://github.com/myashaa/flp/assets/79213041/a36e1876-8d2c-49f3-b466-d16f6b4f3c83)

2 )  
```haskell
main = do
  let input = [['a', 'b'], ['c','d']]
  let getB x = head (tail (head x))
  print(getB input)
```
![image](https://github.com/myashaa/flp/assets/79213041/9d90ad84-21a4-4fad-b697-f006628152b9)

3 )  
```haskell
main = do
  let input = [['a', 'c', 'd'], ['a','b']]
  let getB x = head (tail (head (tail x)))
  print(getB input)
```
![image](https://github.com/myashaa/flp/assets/79213041/d2adb00f-ae8b-47bb-bb22-2a43f58368ca)

4 )  
```haskell
main = do
  let input = [['a','d'], ['b', 'c']]
  let getB x = head (head (tail x))
  print(getB input)
```
![image](https://github.com/myashaa/flp/assets/79213041/ce6d4c47-68af-4e8d-aadc-dd932809b9fe)

--- 
### Задание 3
1 )  
```haskell
main = do
  let oddNatList = [1,3..39]
  print(oddNatList)
```
![image](https://github.com/myashaa/flp/assets/79213041/476b86d4-3c39-4a65-a0e3-adf94dc15969)

2 )  
```haskell
main = do
  let oddNatList = filter odd [1..39]
  print(oddNatList)
```
![image](https://github.com/myashaa/flp/assets/79213041/fb66f98d-644b-4a8a-b299-915934c9cf04)

3 )  
```haskell
main = do
  let isOdd x = (mod x 2) /= 0
  let oddNatList = filter isOdd [1..39]
  print(oddNatList)
```
![image](https://github.com/myashaa/flp/assets/79213041/a5a7190c-a293-4544-8226-978774054929)

4 )  
```haskell
main = do
  let count = 20
  let getOddNatList x = [1,3..2 * x]
  print(getOddNatList count)
```
![image](https://github.com/myashaa/flp/assets/79213041/dd8ecbd1-5e6b-4d77-a402-f3e99e3483b5)

5 )  
```haskell
main = do
  let count = 20
  let getOddNatList x = filter odd [1..2 * x]
  print(getOddNatList count)
```
![image](https://github.com/myashaa/flp/assets/79213041/8d6058f1-9baf-450f-a88c-c3ebfdc25bb5)

6 )  
```haskell
main = do
  let count = 20
  let isOdd x = (mod x 2) /= 0
  let getOddNatList x = filter isOdd [1..2 * x]
  print(getOddNatList count)
```
![image](https://github.com/myashaa/flp/assets/79213041/09ef94a5-d443-4b9a-8098-e0dde70c35b9)

--- 
### Задание 4
```haskell
triangular :: Int -> Int
triangular x = x * (x + 1) `div` 2

tFermatList :: Int -> [Int]
tFermatList x = map triangular [1..x]

main = do
  print(tFermatList 50)
```
![image](https://github.com/myashaa/flp/assets/79213041/9de3ec2d-150b-4694-8301-b6050a4397ca)

---
### Задание 5
```haskell
pyramidal :: Int -> Int
pyramidal x = (2 * x^3 + 3 * x^2 + x) `div` 6

pFermatList :: Int -> [Int]
pFermatList x = map pyramidal [1..x]

main = do
  print(pFermatList 50)
```
![image](https://github.com/myashaa/flp/assets/79213041/9f35ee48-9fb8-4b7d-84c9-fac41a10c282)

