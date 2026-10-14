concatenate([], List, List). 
% concatenate( List1,     List2,   List3)
concatenate([Head1|Tail1], List2, [Head1|Tail3]) :- concatenate(Tail1, List2, Tail3).