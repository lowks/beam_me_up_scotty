-module(module_variable).
-export([main/0, list_suffix/1, duplicate_list/1]).

variable() -> [1, 2, 3, 4, 5].

reverse_list() ->
	lists:reverse(variable()).

append_list() ->
	lists:append(variable(), [6,7,8]).

list_suffix(L) ->
	lists:suffix(variable(), L).

duplicate_list(N) ->
	lists:duplicate(N, variable()).

main() -> 
	io:fwrite("~p~n", [variable()]),
	io:fwrite("~p~n", [append_list()]),
	io:fwrite("~p~n", [list_suffix([4, 5])]),
	io:fwrite("~p~n", [reverse_list()]).

