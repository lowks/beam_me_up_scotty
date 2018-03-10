-module(count_element_tests).
-include_lib("eunit/include/eunit.hrl").

countelement_test() ->
	?assertEqual(#{1 => 1,2 => 1,3 => 2,4 => 1,5 => 1}, count_element:count_element([1, 2, 3, 3, 4, 5])).

countelementempty_test() ->
	?assertEqual(#{}, count_element:count_element([])).

