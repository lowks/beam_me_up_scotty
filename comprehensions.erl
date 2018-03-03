-module(comprehensions).
-export([main/0]). 

rem_two_range() ->
	io:fwrite("~p~n" ,[[X || X <- lists:seq(1, 1000), X rem 2 == 1 ]]).

two_sources() ->
	C = [X + Y || X <- [1,2,3], Y <- [4,5,6]],
	io:fwrite("~p~n", [C]).

main() ->
	[X || X <- [1, 2, 3, 4, 5, 6], is_integer(X), X rem 2 == 0],
	rem_two_range(),
	two_sources().
