-module(factorial).
-export([main/0]).

fac(N) when N == 0 -> 1;
fac(N) when N > 0 -> N*fac(N - 1).

main() ->
   	{ok, [X]} = io:fread("Enter Number: ", "~d"),
	io:fwrite("The result of factorial ~p:  ~p", [X, fac(X)]).


