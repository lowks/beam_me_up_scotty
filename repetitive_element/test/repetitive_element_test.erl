-module(repetitive_element_test).
-compile([export_all, debug_info]).
-include_lib("eunit/include/eunit.hrl").

repetitive_element_test_() ->
	[ ?_assertEqual(1, repetitive_element:repetitive_element([1,1,2,3])),
	  ?_assertEqual([], repetitive_element:repetitive_element([])),
	  ?_assertEqual(0, repetitive_element:repetitive_element([0,0,1,2,3,4,5]))
	 ].
