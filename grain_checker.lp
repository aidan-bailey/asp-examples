grains(1,1,5). grains(1,2,1). grains(1,3,2).
grains(2,1,2). grains(2,2,2). grains(2,3,2).
grains(3,1,6). grains(3,2,5). grains(3,3,4).

geq(Target, SquareCount) :- #max{G: grains(_, _, G)} = MaxGrains, Target = 0..MaxGrains, #count{G: grains(_, _, G), G >= Target} = SquareCount.

#show geq/2.
