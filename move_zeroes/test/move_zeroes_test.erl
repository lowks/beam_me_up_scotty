-module(move_zeroes_test).
-compile([export_all, debug_info]).
-include_lib("eunit/include/eunit.hrl").

moving_zeroes_test_() ->
	[ ?_assertEqual([3,1,0,0], move_zeroes:move_zeroes([0,0,3,1])),
	  ?_assertEqual([1,0], move_zeroes:move_zeroes([0,1])),
	  ?_assertEqual([3,1,0,0,0,0], move_zeroes:move_zeroes([3,1,0,0,0,0])),
	  ?_assertEqual([1,3,0,0,0,0], move_zeroes:move_zeroes([0,0,0,0,1,3]))
	 ].
