-module(mylists_tests).
-compile([export_all, debug_info]).
-include_lib("eunit/include/eunit.hrl").

drop_nth_element_test_() ->
         [{ "Testing normal drop element", 
          ?_assertEqual([0,1], mylists:drop_nth_element([3,0,1], 1))},
          { "Testing normal drop element",
          ?_assertEqual([1], mylists:drop_nth_element([0,1], 1))},
          { "Testing drop element from empty list",
          ?_assertEqual([], mylists:drop_nth_element([], 1))},
          { "Testing drop n bigger than length of list",
          ?_assertEqual([1,2], mylists:drop_nth_element([1,2], 10))}   
         ].