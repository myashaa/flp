seg(1, point(1, 11), point(14, 11)).
seg(2, point(2, 4), point(13, 4)).
seg(3, point(2, 2), point(9, 2)).
seg(4, point(3, 10), point(3, 1)).
seg(5, point(7, 10), point(13, 10)).
seg(6, point(8, 13), point(8, 0)).
seg(7, point(10, 12), point(10, 3)).
seg(8, point(11, 13), point(11, 3)).
seg(9, point(12, 12), point(12, 2)).

seg_len(N, L) :- seg(N, point(X1, Y1), point(X2, Y2)),
  sqrt((X2 - X1) * (X2 - X1) + (Y2 - Y1) * (Y2 - Y1), L).

% Вопросы
% ?- Введите в базу данных правило, определяющее пересекающиеся отрезки. Голова правила представлена структурой cross/5, два аргумента которой N и M - номера пересекающихся отрезков, третий - point(X,Y), описывает точку пересечения, а четвертый и пятый - длины пересекающихся отрезков
% ?- cross(N,M,point(X,Y),NL,ML).
cross(N, M, point(X, Y), NL, ML) :- seg(N, point(X1, Y), point(X2, Y)), seg(M, point(X, Y1), point(X, Y2)),
  X1 < X, X < X2,
  Y2 < Y, Y < Y1,
  seg_len(N, NL),
  seg_len(M, ML).
