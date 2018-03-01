-module(helloworld).
-export([main/0]).

main() ->
   {ok, [X]} = io:fread("Enter Name: ", "~s"),
   io:fwrite("Hello, World ~p !\n", [X]).
