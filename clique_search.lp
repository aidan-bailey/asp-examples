%%%%%%%%%
% INPUT %
%%%%%%%%%

#const n=3.

%%%%%%%%%%
% DEFINE %
%%%%%%%%%%

vertex(a; b; c; d; e; f).
edge(a,b; b,c; c,a; d,f; f,e; e,d; a,d; f,c; b,e).

%%%%%%%%%%%%
% GENERATE %
%%%%%%%%%%%%

{clique(V): vertex(V)} = n.

%%%%%%%%
% TEST %
%%%%%%%%

V1 = V2 :- clique(V1), clique(V2), not edge(V1, V2), not edge(V2, V1).

%%%%%%%%%%
% OUTPUT %
%%%%%%%%%%

#show clique/1.
