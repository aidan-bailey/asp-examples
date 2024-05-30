item(a; b; c; d; e).
weight(a, 12; b, 1; c, 4; d, 2; e, 1).
value(a, 4; b, 2; c, 10; d, 2; e, 1).
#const maxweight = 15.

{pack(I): item(I)}.

netweight(N) :-  #sum{W, I: weight(I, W), pack(I)} = N.
:- netweight(N), N > maxweight.

netvalue(N) :- #sum{V, I: value(I, V), pack(I)} = N.

#maximize{N: netvalue(N)}.

#show pack/1.
#show netvalue/1.
