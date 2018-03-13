-module(add_digits).
-export([main/0]).

string_digits(L) -> split_string_digits(re:replace(L, "\\s+", "", [global,{return,list}]), 0).

split_string_digits([], Acc) -> 
	Acc;

split_string_digits([H|T], Acc) -> 
	{Number, _} = string:to_integer([H]),
	split_string_digits(T, Acc + Number).
		
main() ->
	string_digits("1234 56 78 9").
