-module(sum_list).
-export([sum_it/1]).

sum_it([]) ->
	0;	

sum_it([H|T]) ->
	H + sum_it(T).
