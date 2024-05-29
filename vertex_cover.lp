%%%%%%%%%
% INPUT %
%%%%%%%%%

#const n = 6.

%%%%%%%%%%
% DEFINE %
%%%%%%%%%%

vertex(a; b; c; d; e; f).
edge(a,b; b,c; c,a; d,f; f,e; e,d; a,d; f,c; b,e).

%%%%%%%%%%%%
% GENERATE %
%%%%%%%%%%%%

1{cover(V1); cover(V2)} :- edge(V1, V2).

%%%%%%%%
% TEST %
%%%%%%%%

:- #count{V: cover(V)} != n.

%%%%%%%%%%
% OUTPUT %
%%%%%%%%%%

#show cover/1.
