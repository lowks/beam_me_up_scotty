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
          ?_assertEqual([1,2], mylists:drop_nth_element([1,2], 10))},
          { "Testing drop n that is a negative value",
          ?_assertEqual([1], mylists:drop_nth_element([1,2], -1))},
          { "Testing drop n that two negative values from the back",
          ?_assertEqual([1,2,3,5], mylists:drop_nth_element([1,2,3,4,5], -2))}].

reverse_list_test_() ->
        [{"Reversing a normal list",
         ?_assertEqual([3,2,1], mylists:reverse([1,2,3]))
         },
         {"Reversing an empty list",
         ?_assertEqual([], mylists:reverse([]))
         }
        ].

create_list_from_range_test_() ->
        [{"Create a normal list from range 1-3",
          ?_assertEqual([1,2,3], mylists:list_from_range(1,3))          
         },
         {"Create a normal list from range 1-10",
          ?_assertEqual([1,2,3,4,5,6,7,8,9,10], mylists:list_from_range(1,10))          
         },
         {"Create a normal list from range 3-1",
          ?_assertEqual([3,2,1], mylists:list_from_range(3,1))          
         },
         {"Create a normal list from range 10-1",
          ?_assertEqual([10,9,8,7,6,5,4,3,2,1], mylists:list_from_range(10,1))          
         },
         {"Create a normal list from range 1-1",
         ?_assertEqual([], mylists:list_from_range(1,1))          
         },
         {"Create a normal list from range 10-10",
         ?_assertEqual([], mylists:list_from_range(10,10))          
         }
        ].

