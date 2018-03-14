-module(comprehensions).
-compile([export_all]).
-export([rem_two_range/0, two_sources/0]).

rem_two_range() ->
	[X || X <- lists:seq(1, 10), X rem 2 == 1 ].

two_sources() ->
	[X + Y || X <- [1,2,3], Y <- [4,5,6] ].

filter_list() ->
	[X || {X, Y} <- lists:zip([1, 2, 3], [0, 2, 1]), X > Y].
