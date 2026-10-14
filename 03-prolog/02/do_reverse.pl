
do_reverse([], []).
do_reverse([Head|Tail], Reversed) :- 
		do_reverse(Tail, ReversedTail),
		append(ReversedTail, [Head], Reversed).


% do_reverse([a,b,c], R)                   -> do_reverse([Head1|Tail1], R)     Head1 = a, Tail1 = [b,c], R   = ?
%   do_reverse([b,c], RT1)                 -> do_reverse([Head2|Tail2], RT1)   Head2 = b, Tail2 = [c],   RT1 = ?
%     do_reverse([c], RT2)                 -> do_reverse([Head3|Tail3], RT2)   Head3 = c, Tail3 = [],    RT2 = ?
%       do_reverse([], RT3)                -> do_reverse([], RT3)              base case: RT3 = []
%     append(RT3, [Head3], RT2)            -> append([], [c], RT2)             RT2 = [c]
%   append(RT2, [Head2], RT1)              -> append([c], [b], RT1)            RT1 = [c,b]
% append(RT1, [Head1], R)                  -> append([c,b], [a], R)            R   = [c,b,a]



% Attempt
% do_reverse([], []).
% do_reverse([Head|Tail], [ReversedTail, Head]) :- do_reverse(Tail, ReversedTail).

% Result
% | ?- do_reverse([1, 2, 3], What).
% What = [[[[],3],2],1]


% Attempt
% do_reverse([], _).
% do_reverse([Head|Tail], [ReversedTail, Head]) :- do_reverse(Tail, ReversedTail).

% Result
% | ?- do_reverse([1, 2, 3], What).
% What = [[[_,3],2],1]

