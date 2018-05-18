-module(mylists_tests).
-compile([export_all, debug_info]).
-include_lib("eunit/include/eunit.hrl").

drop_nth_element_test_() ->
        [ ?_assertEqual([0,1], mylists:drop_nth_element([3,0,1], 1)),
          ?_assertEqual([1], mylists:drop_nth_element([0,1], 1)),
          ?_assertEqual([0], mylists:drop_nth_element([0], 0))
         ].