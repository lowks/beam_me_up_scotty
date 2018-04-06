-module(time_conversion_tests).
-include_lib("eunit/include/eunit.hrl").

am_conversion_test_() ->
   [?_assert("00:45:45" =:= time_conversion:timeConversion("12:45:45AM")),
    ?_assert("01:45:45" =:= time_conversion:timeConversion("1:45:45AM"))
    ].

pm_conversion_test_() ->
   [?_assert("13:45:45" =:= time_conversion:timeConversion("1:45:45PM")),
    ?_assert("18:45:45" =:= time_conversion:timeConversion("6:45:45PM")),
    ?_assert("23:45:45" =:= time_conversion:timeConversion("11:45:45PM"))
   ].
