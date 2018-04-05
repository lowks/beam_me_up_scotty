-module(staircase).

%% API exports
-export([]).

%%====================================================================
%% API functions
%%====================================================================
% -module(solution).
-export([main/0]).

%
% Complete the staircase function below.
%
staircase(N) ->
    %
    % Write your code here.
    %
    do_staircase(N, 1).

do_staircase(N, Iterator) when N < Iterator ->
	nil;

do_staircase(N, Iterator) ->
	io:fwrite("~s~n", [string:left("", N - Iterator, 32) ++ string:right("", Iterator, 35)]),
	do_staircase(N, Iterator + 1). 


main() ->
    % {N, _} = string:to_integer(string:chomp(io:get_line(""))),
    io:fwrite("~p" ,[staircase(4)]),
    ok.

%%====================================================================
%% Internal functions
%%====================================================================
