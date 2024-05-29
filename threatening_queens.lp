%%%%%%%%%
% INPUT %
%%%%%%%%%

#const nBoardSize = 15.
#const nQueens = 15.

%%%%%%%%%%
% DEFINE %
%%%%%%%%%%



%%%%%%%%%%%%
% GENERATE %
%%%%%%%%%%%%

% choose a square for each queen
{queen(1..nBoardSize, 1..nBoardSize)} = nQueens.

%%%%%%%%
% TEST %
%%%%%%%%

:- queen(X, Y1), queen(X, Y2), Y1 != Y2.
:- queen(X1, Y), queen(X2, Y), X1 != X2.
:- queen(X1, Y1), queen(X2, Y2), Y1 != Y2, X1 != X2, |X2 - X1| - |Y2 - Y1| = 0.

%%%%%%%%%%
% OUTPUT %
%%%%%%%%%%

#show queen/2.
