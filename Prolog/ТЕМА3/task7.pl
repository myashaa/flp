% ?- Определите отношение repeat3(L1,L2) c аргументами - списками. В списке L2 первый и последний элемент списка L1 меняются местами и повторяются три раза
% ?- repeat_back3( [a, b, c, d], L2).
repeat_back3([], []).
repeat_back3([X], [X]).
repeat_back3([First|Rest], SwappedList) :-
  append(Middle, [Last,Last,Last], Rest),
  append([Last|Middle], [First,First,First], SwappedList).
