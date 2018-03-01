-module(list_print_item).
-export([print_item/1]).
-author("lowks").

print_item([]) ->
	ok;

print_item([H|T]) ->
	io:fwrite("~p", [H]),
	print_item(T).
