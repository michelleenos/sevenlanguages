count(0, []).
count(Count, [Head|Tail]) :- count(Tailcount, Tail), Count is Tailcount + 1.

sum(0, []).
sum(Total, [Head|Tail]) :- sum(Sum, Tail), Total is Head + Sum.

average(Average, List) :- sum(Sum, List), count(Count, List), Average is Sum/Count.