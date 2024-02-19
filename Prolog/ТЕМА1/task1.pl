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
% ?- grandmother(X, bob).
grandmother(X, Y) :- female(X), parent(X, Z), parent(Z, Y).

% ?- grandson(X, Y).
grandson(X, Y) :- male(X), parent(Y, Z), parent(Z, X).

% ?- sister(X, jim).
sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), different(X, Y).
different(X, Y) :- X \= Y.

% ?- aunt(ann, tammy).
aunt(X, Y) :- sister(X, Z), parent(Z, Y).

% ?- cousin(bob, tammy).
cousin(X, Y) :- parent(A, X), parent(B, Y), sibling(A, B).
sibling(X, Y) :- parent(Z, X), parent(Z, Y), different(X, Y).


