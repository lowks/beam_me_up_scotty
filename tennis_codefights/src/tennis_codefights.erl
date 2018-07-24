-module(tennis_codefights).

%% API exports
-compile(export_all).

%%====================================================================
%% API functions
%%====================================================================

% -module(tennis).

tennisSet(Score, Score) ->
    false;

tennisSet(Score1, 7) when Score1 >= 5 ->
    true;

tennisSet(7, Score2) when Score2 >= 5 ->
    true;

tennisSet(7, Score2) when Score2 =< 5 ->
    false;

tennisSet(Score1, 7) when Score1 =< 5 ->
    false;

tennisSet(6, Score2) when Score2 < 5 ->
    true;

tennisSet(Score1, 6) when Score1 < 5 ->
    true;

tennisSet(_, _) ->
    false.

%%====================================================================
%% Internal functions
%%====================================================================
