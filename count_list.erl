-module(count_list).
-include_lib("eunit/include/eunit.hrl").
-export([main/0]).

list_length([]) -> 0;
list_length([_|T]) -> 1 + list_length(T).

list_length_test() ->
     ?assert(list_length([1,2,3,4,5]) == 5).

main() ->
	[X || X <- [1, 2, 3, 4, 5, 6], is_integer(X), X rem 2 == 0],
	list_length([1, 2, 3, 4, 5, 6, 7, 8, 8, 9]).
