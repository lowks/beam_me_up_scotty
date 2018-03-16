-module(missing_numbers).
-compile([export_all, debug_info]).

%% API exports
%% -export([]).

%%====================================================================
%% API functions
%%====================================================================

missing_number(L) -> 
	show_missing(lists:sort(L), lists:seq(0, lists:max(L)), 0). 

show_missing([], _L, Missing) ->
	Missing;

%% show_missing(L, L1, _) when (L == L1) ->
show_missing(L, L, _) ->
	lists:max(L) + 1;

%% show_missing([H|T], [H1|T1], Missing) when (H == H1) ->
show_missing([H|T], [H|T1], Missing) ->
	show_missing(T, T1, Missing);

%% show_missing([H|T], [H1|T1], Missing) when (H /= H1) ->
show_missing([H|T], [H1|T1], Missing) ->
	show_missing(T, T1, Missing + H1).

%%====================================================================
%% Internal functions
%%====================================================================
