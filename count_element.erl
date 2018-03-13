-module(count_element).
-export([main/0, count_element/1]).

count_element(L) ->
	c_element(L, #{}).

c_element([], Map) ->
	Map;

c_element([H|T], Map) ->
	case maps:is_key(H, Map) of
		false -> c_element(T, maps:put(H, 1, Map));
		true ->
			E_Value = maps:get(H, Map),
			c_element(T, maps:update(H, E_Value + 1, Map))	    
	end.

main() ->
	count_element([1, 2, 3, 3, 4, 5]).	
