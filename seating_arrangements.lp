#const n=6.
like(1,2; 3,4; 5,6).
dislike(1,3; 4,6; 2,6).
chair(1..n).
person(1..n).

{sit(P, C): person(P)} = 1 :- chair(C).
:- sit(P1, C1), sit(P2, C2), P1 == P2, C1 != C2.

neighbour(P1, P2) :- sit(P1, 1), sit(P2, n).
neighbour(P1, P2) :- sit(P1, C), sit(P2, C + 1).

like(P1, P2), -neighbour(P1, P2) :- person(P1), person(P2).
:- neighbour(P1, P2), dislike(P1, P2).

#show neighbour/2.
