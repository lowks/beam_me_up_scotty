-module(codefights_tests).
-compile([export_all, debug_info]).
-include_lib("eunit/include/eunit.hrl").

tennis_score_test_() ->
         [{"Testing Metrocard(30)", ?_assertEqual([31], codefights:metroCard(30))}
         ].

