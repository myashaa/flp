likes(ellen, reading).
likes(john, computers).
likes(john, badminton).
likes(john, photo).
likes(john, reading).
likes(leonard, badminton).
likes(eric, swimming).
likes(eric, reading).
likes(eric, chess).
likes(paul, swimming).

% Вопросы
% ?- has_four_hobbies(john).
has_four_hobbies(A) :- likes(A, X1), likes(A, X2), likes(A, X3), likes(A, X4),
  different(X1, X2), different(X1, X3), different(X1, X4),
  different(X2, X3), different(X2, X4),
  different(X3, X4).
  
% ?- have_shared_hobby(ellen, john, reading).
have_shared_hobby(A, B, X) :- likes(A, X), likes(B, X), different(A, B).
