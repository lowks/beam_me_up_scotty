-module(missing_numbers).
-compile([export_all, debug_info]).

%% API exports
%% -export([]).

%%====================================================================
%% API functions
%%====================================================================

missing_number(L) -> 
	show_missing(lists:sort(L), lists:seq(1, lists:max(L)), []). 

%% show_missing([], _, Missing) ->
%%	Missing;

show_missing(L, L, Missing) when L == L ->
	Missing ++ [lists:max(L) + 1];

show_missing(Input, Sequence, Missing) when Input /= Sequence ->
	lists:filter(fun(X) -> not lists:member(X, Input) end, lists:seq(1, lists:max(Sequence))).

%%====================================================================
%% Internal functions
%%====================================================================
