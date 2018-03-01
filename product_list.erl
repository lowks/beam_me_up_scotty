-module(product_list).
-export([product_it/1]).

product_it([]) ->
	1;	

product_it([H|T]) ->
	H * product_it(T).
