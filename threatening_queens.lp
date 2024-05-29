%%%%%%%%%
% INPUT %
%%%%%%%%%

#const nBoardSize = 15.
#const nQueens = 15.

%%%%%%%%%%
% DEFINE %
%%%%%%%%%%

queen(1..nQueens).
square(1..nBoardSize, 1..nBoardSize).

diag(X1, Y1, X2, Y2) :- square(X1, Y1), square(X2, Y2), X1 + (-N; N) = X2, Y1 + N = Y2, N = 1..nBoardSize.

threaten(Q1, Q2) :- place(X, Y1, Q1), place(X, Y2, Q2), square(X, Y1), square(X, Y2), Q1 != Q2.
threaten(Q1, Q2) :- place(X1, Y, Q1), place(X2, Y, Q2), square(X1, Y), square(X2, Y), Q1 != Q2.
threaten(Q1, Q2) :- place(X1, Y1, Q1), place(X2, Y2, Q2), diag(X1, Y1, X2, Y2), Q1 != Q2.

%%%%%%%%%%%%
% GENERATE %
%%%%%%%%%%%%

% choose a square for each queen
{place(X, Y, Q): square(X, Y)} = 1 :- queen(Q).

%%%%%%%%
% TEST %
%%%%%%%%

% make sure multiple queens don't occupy the same square
:- square(X, Y), #count{Q: place(X, Y, Q)} > 1.

% nothing can be threatened
:- threaten(_, _).

%%%%%%%%%%
% OUTPUT %
%%%%%%%%%%

#show place/3.
