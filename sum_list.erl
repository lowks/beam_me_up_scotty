-module(sum_list).
-compile([export_all]).
-include_lib("eunit/include/eunit.hrl").

-export([sum_it/1]).

sum_it([]) ->
	0;	

sum_it([H|T]) ->
	H + sum_it(T);

sum_it(_) ->
	"unsupported".

sum_it_test_() ->
{setup,
 fun() -> [1,2,3,4] end,
 fun([1,2,3,4]) -> ok end,
{with,
[fun(X) -> ?assert(sum_it(X) == 10) end,
 ?assert(sum_it(a) == "unsupported")]}}.
