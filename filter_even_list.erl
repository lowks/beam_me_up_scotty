-module(filter_even_list).
-export([filter_it/1]).
-author(lowks).

filter_it([]) ->
	[];

filter_it([H|T]) when (H rem 2 == 0) ->
	[H | filter_it(T)];

filter_it([_|T]) ->
	filter_it(T).

	
