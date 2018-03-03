-module(module_variable).
-export([main/0]).

variable() -> [1, 2, 3, 4, 5].

reverse_list() ->
	lists:reverse(variable()).

main() -> 
	io:fwrite("~p~n", [variable()]),
	io:fwrite("~p~n", [reverse_list()]).

