%%%%%%%%%%
% DEFINE %
%%%%%%%%%%

atom(a1;a2;a3).

clause(1;2).

occurs(1, a1, affirmed).
occurs(1, a2, affirmed).
occurs(1, a3, affirmed).

occurs(2, a1, negated).
occurs(2, a2, negated).
occurs(2, a3, negated).

%%%%%%%%%%%%
% GENERATE %
%%%%%%%%%%%%

{true(A): atom(A)}.

%%%%%%%%
% TEST %
%%%%%%%%

satisfied(C) :- true(A), occurs(C, A, affirmed).
satisfied(C) :- not true(A), occurs(C, A, negated).
:- clause(C), not satisfied(C).

%%%%%%%%%%
% OUTPUT %
%%%%%%%%%%

#show true/1.
