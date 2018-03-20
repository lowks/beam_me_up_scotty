-module(last_but_one_list).
-compile([export_all, debug_info]).

%% API exports
%% -export([]).

%%====================================================================
%% API functions
%%====================================================================

last_but_one_list([H|T]) when length(T) == 1 ->
	H;

last_but_one_list([]) ->
	[];

last_but_one_list([_|T]) ->
	last_but_one_list(T).

%%====================================================================
%% Internal functions
%%====================================================================
