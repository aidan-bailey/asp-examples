%%%%%%%%%
% INPUT %
%%%%%%%%%

#const n3by1tiles = 21.
#const n1by1tiles = 1.
#const nBoardSize = 8.

%%%%%%%%%%
% DEFINE %
%%%%%%%%%%

h3by1tiles(N) :- #count{R, C: h(R, C)} = N.

%%%%%%%%%%%%
% GENERATE %
%%%%%%%%%%%%

0{h(1..nBoardSize, 1..nBoardSize - 2)}n3by1tiles.
{v(1..nBoardSize - 2, 1..nBoardSize)} = n3by1tiles - N :- h3by1tiles(N).
{s(1..nBoardSize, 1..nBoardSize)} = 1.

%%%%%%%%
% TEST %
%%%%%%%%

:- s(R, C), h(R, C + 0..2), v(R + 0..2, C).

%%%%%%%%%%
% OUTPUT %
%%%%%%%%%%

#show h/2.
#show v/2.
#show s/2.
