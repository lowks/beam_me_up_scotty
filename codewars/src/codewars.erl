-module(codewars).

%% API exports
-compile(export_all).
% -export([row_sum_odd_numbers/1]).

%%====================================================================
%% API functions
%%====================================================================

% Given the triangle of consecutive odd numbers:
%              1
%           3     5
%        7     9    11
%    13    15    17    19
% 21    23    25    27    29
% ...
% Calculate the sum of the numbers in the nth row of this triangle (starting at index 1) e.g.: (Input --> Output)
% 1 -->  1
% 2 --> 3 + 5 = 8


row_sum_odd_numbers(N) ->
 Rows = lists:sum(lists:seq(1,N)),
 lists:sum([X || X <- lists:seq(Rows*2 - N*2,Rows*2), X rem 2 == 1]).

 row_sum_odd_numbers_2(N) -> N * N * N.


% Timmy & Sarah think they are in love, but around where they live, they will only know once they pick a flower each. If one of the flowers has an even number of petals and the other has an odd number of petals it means they are in love.

% Write a function that will take the number of petals of each flower and return true if they are in love and false if they aren't.

lovefunc(Flower1, Flower2) when (Flower1 rem 2 =:= 0) and (Flower2 rem 2 =/= 0) -> 
true;
lovefunc(Flower1, Flower2) when (Flower1 rem 2 =/= 0) and (Flower2 rem 2 =:= 0) -> 
  true;
lovefunc(_, _) -> 
  false.

% Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.

% For example:

% summation(2) -> 3
% 1 + 2

% summation(8) -> 36
% 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8

summation(0) -> 0;
summation(N) -> N + summation(N-1).


%%====================================================================
%% Internal functions
%%====================================================================
