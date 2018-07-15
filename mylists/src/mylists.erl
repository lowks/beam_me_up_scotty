-module(mylists).

%% API exports
% -export([]).
-compile(export_all).

%%====================================================================
%% API functions
%%====================================================================

% Drop nth element

drop_nth_element(L, N) ->
    do_drop_nth_element(L, N, 1).

do_drop_nth_element([],_,_) -> [];

do_drop_nth_element(L, N, _) when N > length(L) -> L;

do_drop_nth_element(L, N, _) when N < 0 ->
    lists:reverse(drop_nth_element(lists:reverse(L), -N));

do_drop_nth_element([_H|T], N, N) ->
    do_drop_nth_element(T, N, N+1);

do_drop_nth_element([H|T], N, M) ->
    [H] ++ do_drop_nth_element(T, N, M+1).

% reverse the list

reverse(L) ->
    reverse(L, []).

reverse([], Result) ->
    Result;

reverse([H|T], Result) ->
    reverse(T, [H]++Result).

% list from range

list_from_range(M, M) ->
    [];

list_from_range(Min, Max) ->
    list_from_range(Min, Max, []).

list_from_range(Min, Max, Result) when Min /= Max, Max > Min ->
    list_from_range(Min + 1, Max, [Min] ++ Result);

list_from_range(Min, Max, Result) when Min /= Max, Min > Max ->
    reverse(list_from_range(Max, Min));

list_from_range(Min, Max, Result) when Min =:= Max, Min /= 0, Max /= 0  ->
    list_from_range(0, 0, [Max] ++ Result);

list_from_range(0, 0, Result) -> reverse(Result).

% duplicate elements

duplicate_elements([]) ->
    [];

duplicate_elements(L) ->
    duplicate_elements(L, []).

duplicate_elements([H|L], Result) ->
    duplicate_elements(L, [H, H] ++ Result);

duplicate_elements([], Result) -> reverse(Result).

% palindrome

is_palindrome([]) ->
    true;

is_palindrome(L) ->
    L == reverse(L).

% length_of_list

length_of_list(L) ->
    length_of_list(L, 0).

length_of_list([H|T], Length) ->
    length_of_list(T, Length + 1);

length_of_list([], Length) ->
    Length.

%%====================================================================
%% Internal functions
%%====================================================================
