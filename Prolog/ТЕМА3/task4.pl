% ?- Определите процедуру place/3, которая первый свой аргумент помещает во второй аргумент, являющийся списком, таким образом, что первый аргумент последовательно занимает место между элементами второго  аргумента
% ?- place(x,[a,b,c],L).
place(X, [Y|Rest], [X,Y|Rest]).
place(X, [Y|Rest], [Y|NewRest]) :- 
  place(X, Rest, NewRest).
