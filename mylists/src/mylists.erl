-module(mylists).

%% API exports
% -export([]).
-compile(export_all).

%%====================================================================
%% API functions
%%====================================================================

drop_nth_element(L, N) ->
    do_drop_nth_element(L, N, 1).

do_drop_nth_element([],_,_) -> [];

do_drop_nth_element(L, N, _) when N > length(L) -> L;

do_drop_nth_element([_H|T], N, N) ->
    do_drop_nth_element(T, N, N+1);

do_drop_nth_element([H|T], N, M) ->
    [H] ++ do_drop_nth_element(T, N, M+1).

%%====================================================================
%% Internal functions
%%====================================================================
