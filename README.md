# ASP Examples
A collection of Answer Set Programming examples

# Solving Problems

## logic_circuit_checker.lp

Analyse a logic circuit for all possible valid signals.

## grain_checker.lp

Compute the number of squares which contain equal to or over a number of grains.

## seating_arrangements.lp

There are n chairs (and people) around a circular table.
Some guests like or dislike eachother.
Find the seating arrangement such that guests who like each other sit next to each other, and guests who dislike each other do not sit next to each other.

## clique_search.lp

A clique in a graph $(V,E)$ is a set $C\subseteq V$ s.t. for every $v_{1},v_{2}\in V$, $v_{1}$ and $v_{2}$ are adjacent. Write a program that has as answer sets all the cliques of size $n$.

## vertex_cover.lp

A vertex cover of a graph is a set of vertices such that every edge of the graph has at least one point in the set. Write a program that has as answer sets all the vertex covers of size $n$.

## threatening_queens.lp

Place eight queens on a chessboard so that no two queens threaten each other.

## two_dim_tiling.lp

Cover a chessboard by 21 3-by-1 tiles and 1 1-by-1 tile.

## satisfiability.lp

A formula in conjunctive normal form consists of a set of clauses of the form

$$\{ l_1,\ldots, l_n\}$$

where $l_i$ is an atom or a negated atom (for every $i=1,\ldots,n$). 
The satisfiability problem consists in finding a set of atoms $x$ such that for every clause $\{ l_1,\ldots, l_n\}$, there is some $i=1,\ldots,n$ s.t.\ $l_i$ is a positive atom and occurs in  $x$ or $l_i$ is a negated atom $\neg b$ and $b$ does not occur in $x$.

# Optimising Solutions

## smallest_vertex_cover.lp

A vertex cover of a graph is a set of vertices such that every edge of the graph has at least one point in the set. Write a program that has as answer sets all the vertex covers of size n.\pause
