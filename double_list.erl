-module(double_list).
-export([double_it/1]).
-author(lowks).

double_it([]) ->
	[];
double_it([H|T]) ->
	[2*H|double_it(T)].
