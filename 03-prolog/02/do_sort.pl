% reusing the smallest goal from the previous "do"
smallest(inf, []).
smallest(Small, [Head|Tail]) :- 
		smallest(SmallTail, Tail), 
		(Head @< SmallTail -> Small is Head; Small is SmallTail).

% this feels like cheating maybe?
% or at least not very efficient lol
% problem: if you have duplicate numbers, the duplicates are removed
do_sort([], []).
do_sort(List, Sorted) :-
		smallest(SortedHead, List),
		subtract(List, [SortedHead], Rest), 
		do_sort(Rest, SortedRest),
		append([SortedHead], SortedRest, Sorted).

