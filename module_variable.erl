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

drop_while() ->
	lists:dropwhile(fun(X) -> X rem 2 == 1 end, variable()).

double_list() ->
	lists:map(fun(X) -> 2 * X end, variable()).

calling_other_function() ->
	lists:zip(variable(), double_list()).

main() -> 
	io:fwrite("~p~n", [variable()]),
	io:fwrite("Append List: ~p~n", [append_list()]),
	io:fwrite("Lists Suffix: ~p~n", [list_suffix([4, 5])]),
	io:fwrite("Drop While: ~p~n", [drop_while()]),
	io:fwrite("Double List: ~p~n", [double_list()]),
	io:fwrite("Calling Other Function: ~p~n", [calling_other_function()]),
	io:fwrite("Reverse List: ~p~n", [reverse_list()]).

