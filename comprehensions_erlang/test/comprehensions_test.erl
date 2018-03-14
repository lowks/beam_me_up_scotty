-module(comprehensions_test).
-compile([export_all, debug_info]).
-include_lib("eunit/include/eunit.hrl").

comprehensions_test_() ->
	[ ?_assertEqual([1,3,5,7,9], comprehensions:rem_two_range()),
	  ?_assertEqual([1,3], comprehensions:filter_list()),
	  ?_assertEqual([5,6,7,6,7,8,7,8,9], comprehensions:two_sources()) ].
