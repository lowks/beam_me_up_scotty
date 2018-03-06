-module(length_of_last_word).
-export([main/0]).

length_of_last_word(L) ->
	length_last_word(string:split(L, " ", all)).

length_last_word(L) when (length(L) == 0) -> 0;

length_last_word(L) -> 
	length(lists:last(L)). 

main() ->
	length_of_last_word("Hello World Munga Muga").
