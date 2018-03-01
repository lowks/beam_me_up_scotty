-module(reverse_list).
-export([reverse_it/1]).

reverse_it([]) ->
	[];

reverse_it([H|T]) ->
	reverse_it(T) ++ [H].
