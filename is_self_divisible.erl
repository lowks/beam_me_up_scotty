-module(is_self_divisible).
-export([main/0]).

% https://leetcode.com/problems/self-dividing-numbers/description/

is_divisible_num(L) -> divisible(L, []).

divisible([], Acc) -> Acc;

divisible([H|T], Acc) ->
	case is_self_divisible(H) of
		true -> divisible(T, Acc ++ [H]);
		false -> divisible(T, Acc)
	end.

is_self_divisible(N) -> self_divisible(N, 10).

self_divisible(N, B) ->
	if
		(N div 10 == 0) -> self_divisible(N, 0, N, B, true); 
		(N rem (N div 10) == 0) -> self_divisible(N, N div B, N rem B, B, true);
		(N rem (N div 10) /= 0) -> 
			false
			% self_divisible(N, N div B, N rem B, B, false)
	end.
	% self_divisible(N, N div B, N rem B, B, true).

self_divisible(N, D, R, _B, _Status) when (D == 0) ->
	% io:fwrite("~p~n", [N]),
	if
		(N rem R == 0) -> 
			true; 
		(N rem R /= 0) -> 
			false 
	end;

self_divisible(N, D, R, B, _Status) when (D > 0) ->
	% io:fwrite("~p~n", [R]),
	if
		(R == 0) -> false;
		(N rem R == 0) -> self_divisible(N, D div B, R, B, true);
		(N rem R /= 0) -> false
	end.	

main() ->
 	is_divisible_num(lists:seq(1, 22)).	
	% is_self_divisible(21).	
