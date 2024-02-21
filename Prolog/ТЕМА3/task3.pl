% ?- Определите процедуру total/2, которая подсчитывает произведение элементов списка целых чисел
% ?- total([1,2,3],N).
total([], 1).
total([H|T], Result) :- 
  total(T, Temp),
  Result is H * Temp.
