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


% In this Kata your task will be to return the count of pairs that have consecutive numbers as follows:

% pairs([1,2,5,8,-4,-3,7,6,5]) = 3
% The pairs are selected as follows [(1,2),(5,8),(-4,-3),(7,6),5]
% --the first pair is (1,2) and the numbers in the pair are consecutive; Count = 1
% --the second pair is (5,8) and are not consecutive
% --the third pair is (-4,-3), consecutive. Count = 2
% --the fourth pair is (7,6), also consecutive. Count = 3. 
% --the last digit has no pair, so we ignore.
% More examples in the test cases.

% -module(kata).
% -export([pairs/1, pairs/2]).

pairs([]) ->
  0;

pairs(List) ->
  pairs(List, 0).

pairs(L, Acc) when length(L) =< 1 ->
   Acc;

pairs([X,Y| Tail], Acc) when abs(Y-X) =:= 1 ->
   pairs(Tail, Acc+1);

pairs([X,Y | Tail], Acc) when Y =/= X+1 ->
   pairs(Tail, Acc).

% Definition
% Strong number is the number that the sum of the factorial of its digits is equal to number itself.

% For example: 145, since
% 1! + 4! + 5! = 1 + 24 + 120 = 145
% So, 145 is a Strong number.

strong(N) ->
  strong(integer_to_list(N), N, 0).

strong([], N, Acc) ->
  if 
    N =/= Acc ->
      "Not Strong !!";
    N =:= Acc ->
      "STRONG!!!!"
  end;
  
strong([H|T], N, Acc) ->
  strong(T, N, Acc+factorial(H -$0)).

factorial(0) -> 1;
factorial(N) when N > 0 ->
  N * factorial(N-1).


% The first century spans from the year 1 up to and including the year 100, The second - from the year 101 up to and including the year 200, etc.

% Task :
% Given a year, return the century it is in.

% Input , Output Examples :
% 1705 --> 18
% 1900 --> 19
% 1601 --> 17
% 2000 --> 20

century(Year) ->
  if
    Year =< 999 ->
      List = string:right(integer_to_list(Year), 4, $0);
    Year >= 1000 -> 
      List = integer_to_list(Year)
  end,
  Century = list_to_integer(lists:sublist(List, length(List) - 2)),
  Year2 = list_to_integer(integer_to_list(Year) -- integer_to_list(Century)),
  if
    Year2 >= 1 ->
      Century + 1;
    Year2 =:= 0 ->
      Century
   end.

century_better(Year) ->
  ((Year-1) div 100)+1.

% Task
% Given an array/list [] of integers , Find the product of the k maximal numbers.

% Notes
% Array/list size is at least 3 .

% Array/list's numbers Will be mixture of positives , negatives and zeros

% Repetition of numbers in the array/list could occur.


max_product(A, S) ->
  List = lists:reverse(lists:sort(A)),
  Reversed = lists:sublist(List,S),
  product(Reversed).

product(List) ->
  product(List, 1).

product([], Result) ->
  Result;

product([H|T], Result) ->
  product(T, Result*H).

%%====================================================================
%% Internal functions
%%====================================================================
