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

{h(1..nBoardSize, 1..nBoardSize - 2); v(1..nBoardSize - 2, 1..nBoardSize)} = n3by1tiles.
{s(1..nBoardSize, 1..nBoardSize)} = n1by1tiles.

%%%%%%%%
% TEST %
%%%%%%%%

:- h(R, C), h(R, C + (1..2)).
:- v(R, C), v(R + (1..2), C).
:- h(R, C), v(R - (0..2), C + (0..2)).

:- s(R, C), h(R, C - (0..2)).
:- s(R, C), v(R - (0..2), C).

%%%%%%%%%%
% OUTPUT %
%%%%%%%%%%

#show h/2.
#show v/2.
#show s/2.
