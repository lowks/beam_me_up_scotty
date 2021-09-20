-module(codewars_test).
-include_lib("eunit/include/eunit.hrl").

codewars_test_() ->
  {"Basic tests", [{"row_sum_odd_numbers(1)", ?_assertEqual(1, codewars:row_sum_odd_numbers(1))},
                   {"row_sum_odd_numbers(2)", ?_assertEqual(8, codewars:row_sum_odd_numbers(2))},
                   {"row_sum_odd_numbers(13)", ?_assertEqual(2197, codewars:row_sum_odd_numbers(13))},
                   {"row_sum_odd_numbers(19)", ?_assertEqual(6859, codewars:row_sum_odd_numbers(19))},
                   {"row_sum_odd_numbers(41)", ?_assertEqual(68921, codewars:row_sum_odd_numbers(41))},
                   {"row_sum_odd_numbers(42)", ?_assertEqual(74088, codewars:row_sum_odd_numbers(42))},
                   {"row_sum_odd_numbers(74)", ?_assertEqual(405224, codewars:row_sum_odd_numbers(74))},
                   {"row_sum_odd_numbers(86)", ?_assertEqual(636056, codewars:row_sum_odd_numbers(86))},
                   {"row_sum_odd_numbers(93)", ?_assertEqual(804357, codewars:row_sum_odd_numbers(93))},
                   {"row_sum_odd_numbers(101)", ?_assertEqual(1030301, codewars:row_sum_odd_numbers(101))},
                   {"Testing for 1, 4", ?_assert   (codewars:lovefunc(1, 4))},
                   {"Testing for 2, 2", ?_assertNot(codewars:lovefunc(2, 2))},
                   {"Testing for 0, 1", ?_assert   (codewars:lovefunc(0, 1))},
                   {"Testing for 0, 0", ?_assertNot(codewars:lovefunc(0, 0))},
                   {"Summation: Testing for 1", ?_assertEqual(1, codewars:summation(1))},
                   {"Summation: Testing for 8", ?_assertEqual(36, codewars:summation(8))},
                   {"Summation: Testing for 22", ?_assertEqual(253, codewars:summation(22))},
                   {"Summation: Testing for 100", ?_assertEqual(5050, codewars:summation(100))},
                   {"Summation: Testing for 213", ?_assertEqual(22791, codewars:summation(213))}]}.