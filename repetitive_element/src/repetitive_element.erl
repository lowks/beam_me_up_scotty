-module(repetitive_element).
-compile([export_all, debug_info]).

%% API exports
-export([]).

%%====================================================================
%% API functions
%%====================================================================

repetitive_element([]) ->
	[];

repetitive_element(L) ->
	rep_element(L, 0).

rep_element([H|T], Answer) ->
	Count = lists:filter(fun(X) -> X == H end, [H|T]),
	case length(Count) > 1 of
		true -> Answer + H;
		false -> rep_element(T, Answer)
	end.   

%%====================================================================
%% Internal functions
%%====================================================================
