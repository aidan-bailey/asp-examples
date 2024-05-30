%#const n = 2.

set(1..5).

element(1..6).

in(1, (1;2;5)).
in(2, (1;3)).
in(3, (2;4)).
in(4, (3;6)).
in(5, (2;3;6)).

disjoint(S1, S2) :- set(S1), set(S2), #count{V: in(S1, V), in(S2, V)} = 0, S1 != S2.

{pairwisedisjoint(S): set(S)}.

S1 = S2 :- pairwisedisjoint(S1), pairwisedisjoint(S2), not disjoint(S1, S2).

setCount(N) :- #count{S: pairwisedisjoint(S)} = N.

#maximize{N: setCount(N)}.

#show pairwisedisjoint/1.
