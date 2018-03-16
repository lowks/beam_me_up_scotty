-module(missing_numbers_test).
-compile([export_all, debug_info]).
-include_lib("eunit/include/eunit.hrl").

missing_numbers_test_() ->
	[ ?_assertEqual(2, missing_numbers:missing_number([3,0,1])),
	  ?_assertEqual(2, missing_numbers:missing_number([0,1])),
	  ?_assertEqual(1, missing_numbers:missing_number([0])),
	  ?_assertEqual(8, missing_numbers:missing_number([9,6,4,2,3,5,7,0,1])),
	  ?_assertEqual(8, missing_numbers2:missing_number([9,6,4,2,3,5,7,0,1])),
	  ?_assertEqual(2, missing_numbers2:missing_number([3,0,1])),
	  ?_assertEqual(2, missing_numbers2:missing_number([0,1]))
	 ].
