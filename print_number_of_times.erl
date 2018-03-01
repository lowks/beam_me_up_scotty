-module(print_number_of_times).
-export([print_it/2]).

print_it(0, _) -> ok;

print_it(N, String) ->
	io:fwrite(String),
	print_it(N - 1, String).
