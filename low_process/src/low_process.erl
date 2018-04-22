-module(low_process).

%% API exports
-export([talk/0]).

%%====================================================================
%% API functions
%%====================================================================

talk() ->
	receive
		{Sentence} -> io:format("I was asked to say: ~s", [Sentence]),
			      talk();	
		_Other -> 
			io:format("Can't speak that!"),
			talk()
	end.


%%====================================================================
%% Internal functions
%%====================================================================
