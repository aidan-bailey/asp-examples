%%%%%%%%%
% INPUT %
%%%%%%%%%

#const nQueens = 8.

%%%%%%%%%%
% DEFINE %
%%%%%%%%%%

threaten(X1, Y1, X2, Y2) :- queen(X1, Y1), queen(X2, Y2), X1 + (-N; N) = X2, Y1 + N = Y2, N = 1..8.
threaten(X1, Y1, X2, Y2), Y1 = Y2 :- queen(X1, Y1), queen(X2, Y2), X1 = X2.
threaten(X1, Y1, X2, Y2), X1 = X2 :- queen(X1, Y1), queen(X2, Y2), Y1 = Y2.

%%%%%%%%%%%%
% GENERATE %
%%%%%%%%%%%%

% choose a square for each queen
{queen(1..8, 1..8)} = nQueens.

%%%%%%%%
% TEST %
%%%%%%%%

% nothing can be threatened
:- threaten(_, _, _, _).

%%%%%%%%%%
% OUTPUT %
%%%%%%%%%%

#show queen/2.
