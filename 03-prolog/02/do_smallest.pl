smallest(inf, []).
smallest(Small, [Head|Tail]) :- 
		smallest(SmallTail, Tail), 
		(Head @< SmallTail -> Small is Head; Small is SmallTail).