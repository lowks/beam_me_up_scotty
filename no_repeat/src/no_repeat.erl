-module(no_repeat).

%%% From here http://beust.com/weblog/2008/06/27/
%% API exports
-export([]).
-compile(export_all).

%%====================================================================
%% API functions
%%====================================================================

no_repeat(Start, Finish) ->
	lists:filter(fun(X) -> not is_repetitive(X) end, lists:seq(Start, Finish)).

is_repetitive(Number) ->
	String = integer_to_list(Number),
	is_repetitive(String, false).

is_repetitive([], Result) -> 
	Result;

is_repetitive(Number, _) ->
	Count = length(lists:filter(fun(X) -> X =:= hd(Number) end, Number)),
	case Count of
		1 -> is_repetitive(tl(Number), false);
		_ -> true
	end.

%%====================================================================
%% Internal functions
%%====================================================================
