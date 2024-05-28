%%%%%%%%%%%%%%
% COMPONENTS %
%%%%%%%%%%%%%%

% components
wire(w0;w1;w2;w3;w4;w5).
gate(g0;g1;g2).
type(g0,not_g;g1,and_g;g2,or_g).
signal(0;1).

% connections
input(g0,w0;g1,w1;g1,w2;g1,w3;g2,w3;g2,w4).
output(g0,w1;g1,w4;g2,w5).

%%%%%%%%%%%
% HELPERS %
%%%%%%%%%%%

% helpers
arity(G, N) :- gate(G), #count{Win: input(G, Win)} = N.
highs(G, H) :- gate(G), #count{Win: input(G, Win), val(Win, 1)} = H.
lows(G, N - H) :- arity(G, N), arity(G, H).

%%%%%%%%%%%%%%%
% CONSTRAINTS %
%%%%%%%%%%%%%%%

% a wire can't have multiple signals
:- val(W, 1), val(W, 0).

% if there is no explicit evidence derived for a wire, it is zero
val(W, 0) :- wire(W), not val(W,1).

%%%%%%%%%
% GATES %
%%%%%%%%%

% and gate fires if all input signals are 1
val(W, 1) :- output(G, W), type(G, and_g), highs(G, H), arity(G, N), H = N.

% or gate fires if at least one input signal is 1
val(W, 1) :- output(G, W), type(G, or_g), highs(G, H), H > 0.

% not gate fires if input is 0
val(W, 1) :- output(G, W), type(G, not_g), input(G, Win), val(Win, 0).

%%%%%%%%%%%%
% GENERATE %
%%%%%%%%%%%%

% combinations of ins
{val(W, 0..1)} = 1 :- wire(W), #count{G: output(G, W)} == 0.

#show val/2.
