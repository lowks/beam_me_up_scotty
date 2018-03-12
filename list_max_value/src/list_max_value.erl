-module(list_max_value).

%% API exports
-export([max_value/1, trad_max_value/1]).

%%====================================================================
%% API functions
%%====================================================================


%%====================================================================
%% Internal functions
%%====================================================================

max_value([]) ->
	0;

max_value(L) ->
	[H|_] = lists:reverse(lists:sort(L)),
	H.	

trad_max_value(L) ->
	t_max_value(L, 0).

t_max_value([], Max) ->
	Max;

t_max_value([H|T], Max) when (Max >= H) ->
	t_max_value(T, Max);

t_max_value([H|T], Max) when (Max < H) ->
	t_max_value(T, H).
