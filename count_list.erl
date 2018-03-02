-module(count_list).
-export([main/0]).

list_length([]) -> 0;
list_length([_|T]) -> 1 + list_length(T).

main() ->
	[X || X <- [1, 2, 3, 4, 5, 6], is_integer(X), X rem 2 == 0],
	list_length([1, 2, 3, 4, 5, 6, 7, 8, 8, 9]).
