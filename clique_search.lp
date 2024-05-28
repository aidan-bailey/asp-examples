#const n=3.
vertex(a; b; c; d; e; f).
edge(a,b; b,c; c,a; d,f; f,e; e,d; a,d; f,c; b,e).

adj(V1, V2) :- edge(V1, V2), V1 != V2.
adj(V2, V1) :- adj(V1, V2).

{clique(V): vertex(V)} = n.

:- not adj(V1, V2), clique(V1), clique(V2), V1 != V2.

#show clique/1.
