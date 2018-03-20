-module(last_but_one_list_tests).
-compile([export_all, debug_info]).
-include_lib("eunit/include/eunit.hrl").

last_but_one_list_test_() ->
	[ ?_assertEqual(2, last_but_one_list:last_but_one_list([1,1,2,3])),
	  ?_assertEqual(4, last_but_one_list:last_but_one_list([-1,2,4,5])),
	  ?_assertEqual([], last_but_one_list:last_but_one_list([])),
	  ?_assertEqual(4, last_but_one_list:last_but_one_list([0,0,1,2,3,4,5]))
	 ].
