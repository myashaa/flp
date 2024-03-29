male(bill).
male(paul).
male(joe).
male(jim).
male(bob).

female(sue).
female(mary).
female(ann).
female(tammy).

parent(bill, joe).
parent(sue, joe).
parent(bill, ann).
parent(sue, ann).
parent(joe, tammy).
parent(paul, jim).
parent(mary, jim).
parent(jim, bob).
parent(ann, bob).

% Вопросы
% ?- Составить вопрос и найти в базе данных бабушку для bob
% ?- grandmother(X, bob).
grandmother(X, Y) :- female(X), parent(X, Z), parent(Z, Y).

% ?- Составить вопрос и найти в базе данных внука
% ?- grandson(X, Y).
grandson(X, Y) :- male(X), parent(Y, Z), parent(Z, X).

% ?- Составить вопрос и найти в базе данных сестру для jim
% ?- sister(X, jim).
different(X, Y) :- X \= Y.
sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), different(X, Y).

% ?- Определите отношение "тётя"
% ?- aunt(ann, tammy).
aunt(X, Y) :- sister(X, Z), parent(Z, Y).

% ?- Определите отношение "кузин"
% ?- cousin(bob, tammy).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), different(X, Y).
cousin(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B).
