-module(double_list).
-compile([export_all]).
-include_lib("eunit/include/eunit.hrl").
-author(lowks).

double_it([]) ->
	[];
double_it([H|T]) ->
	[2*H|double_it(T)].

double_it_test() ->
	{setup,
fun() -> [1,2,3,4] end,
fun([1,3,4,5]) -> ok end,
{with,
[fun(X) -> ?assert(double_it(X) == [3,5,6,7]) end]}}.
