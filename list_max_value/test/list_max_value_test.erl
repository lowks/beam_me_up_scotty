-module(list_max_value_test).
-compile([export_all, debug_info]).
-include_lib("eunit/include/eunit.hrl").

max_value_test_() ->
	[ ?_assertEqual(5, list_max_value:max_value([5,3,4,2,1])),
	  ?_assertEqual(2, list_max_value:max_value([1,2])),
	  ?_assertEqual(2, list_max_value:trad_max_value([1,2])),
	  ?_assertEqual(6, list_max_value:trad_max_value([6,5,4,3,2])),
	  ?_assertEqual(6, list_max_value:trad_max_value([6,6,5,4,3,2])) ].

max_value_empty_test() ->
	?assertEqual(0, list_max_value:max_value([])).
