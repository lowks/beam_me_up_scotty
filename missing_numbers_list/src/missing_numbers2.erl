-module(missing_numbers2).
-compile([export_all, debug_info]).

%% API exports
%% -export([]).

%%====================================================================
%% API functions
%%====================================================================

missing_number(L) -> 
	show_missing2(lists:sort(L), 0). 

show_missing2([H], 0) ->
	H + 1;

show_missing2([H|[H1|T]], Missing) ->
	if 
		H1 - H == 1 ->
			show_missing2([H1|T], Missing);
		H1 - H /= 1 -> 
			Missing + (H1 - 1)
	end. 

%%====================================================================
%% Internal functions
%%====================================================================
