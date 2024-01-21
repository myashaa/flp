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
  let getB x = tail (head x)
  print(getB input)
```
![image](https://github.com/myashaa/flp/assets/79213041/c471d18d-5043-4927-b8f9-c65ffefb0229)

3 )  
```haskell
main = do
  let input = [['a', 'c', 'd'], ['a','b']]
  let getB x = tail (head (tail x))
  print(getB input)
```
![image](https://github.com/myashaa/flp/assets/79213041/388a693e-addd-4d40-8bc2-8cd91e3d388b)

4 )  
```haskell
main = do
  let input = [['a','d'], ['b', 'c']]
  let getB x = head (head (tail x))
  print(getB input)
```
![image](https://github.com/myashaa/flp/assets/79213041/893e5d1d-3cbb-4c1b-ab12-a0930b8a20d9)
--- 
### Задание 3

---
### Задание 4

---
### Задание 5

