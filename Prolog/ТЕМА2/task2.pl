seglength(N, L) :- seg(N, point(X1, Y1), point(X2, Y2)),
  sqrt((X2 - X1) * (X2 - X1) + (Y2 - Y1) * (Y2 - Y1), L).

% Вопросы
% ?- cross(N,M,point(X,Y),NL,ML).
cross(N, M, point(X, Y), NL, ML) :- seg(N, point(X1, Y), point(X2, Y)), seg(M, point(X, Y3), point(X, Y4)),
  X1 < X, X < X2,
  Y4 < Y, Y < Y3,
  seglength(N, NL),
  seglength(M, ML).
