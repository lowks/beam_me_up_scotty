-module(move_zeroes).
-compile([export_all, debug_info]).

%% This is solving this problem: https://www.geeksforgeeks.org/move-zeroes-end-array/

%% API exports
-export([]).

move_zeroes(L) ->
	moving_zeroes(L, []).

moving_zeroes(L, _) ->
	Zeroes = lists:filter(fun(X) -> X == 0 end, L),
	Non = lists:filter(fun(X) -> X /= 0 end, L),
	Non ++ Zeroes.

%% moving_zeroes([H|T], Result) when H == 0 ->
%%	moving_zeroes(T, lists:flatten(Result ++ [H]));

%% moving_zeroes([H|T], Result) when H /= 0  ->
	%% io:fwrite("~p ",lists:flatten(H ++ Result)),
	%% moving_zeroes(T, lists:flatten([H] ++ Result)).
	%% moving_zeroes(T, lists:reverse(lists:flatten([H] ++ Result))).
	 
%%====================================================================
%% API functions
%%====================================================================


%%====================================================================
%% Internal functions
%%====================================================================
