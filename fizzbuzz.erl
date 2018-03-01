-module(fizzbuzz).
-export([main/0]).

fizzbuzz(N) when (N rem 3 == 0) and (N rem 5 == 0) ->
	io:fwrite("fizzbuzz");

fizzbuzz(N) when (N rem 3 == 0) ->
	io:fwrite("fizz");

fizzbuzz(N) when (N rem 5 == 0) ->
	io:fwrite("buzz");

fizzbuzz(N) when (N rem 5 /= 0) and (N rem 3 /= 0) ->
	io:write(N).

main() ->
	{ok, [Input]} = io:fread("Enter Number: ", "~d"),
	fizzbuzz(Input).
