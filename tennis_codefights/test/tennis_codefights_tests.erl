-module(tennis_codefights_tests).
-compile([export_all, debug_info]).
-include_lib("eunit/include/eunit.hrl").

tennis_score_test_() ->
         [{"Testing case of 7 and 5: True", ?_assertEqual(true, tennis_codefights:tennisSet(7, 5))},
         {"Testing case of 3 and 6: True", ?_assertEqual(true, tennis_codefights:tennisSet(3, 6))},
         {"Testing case of 6 and 4: True", ?_assertEqual(true, tennis_codefights:tennisSet(6, 4))},
         {"Testing case of 7 and 5: True", ?_assertEqual(true, tennis_codefights:tennisSet(7, 5))},
         {"Testing case of 7 and 6: True", ?_assertEqual(true, tennis_codefights:tennisSet(7, 6))},
         {"Testing case of 1 and 6: True", ?_assertEqual(true, tennis_codefights:tennisSet(1, 6))},
         {"Testing case of 8 and 5: False", ?_assertEqual(false, tennis_codefights:tennisSet(8, 5))},
         {"Testing case of 6 and 5: False", ?_assertEqual(false, tennis_codefights:tennisSet(6, 5))},
         {"Testing case of 7 and 2: False", ?_assertEqual(false, tennis_codefights:tennisSet(7, 2))},
         {"Testing case of 4 and 10: False", ?_assertEqual(false, tennis_codefights:tennisSet(4, 10))},
         {"Testing case of 0 and 0: False", ?_assertEqual(false, tennis_codefights:tennisSet(0, 0))},
         {"Testing case of 7 and 7: False", ?_assertEqual(false, tennis_codefights:tennisSet(7, 7))}].

