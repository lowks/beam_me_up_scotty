-module(time_conversion).

%% API exports
%% -export([]).
-compile(export_all).

%%====================================================================
%% API functions
%%====================================================================

timeConversion(S) ->
    case lists:suffix("PM", S) of
        true -> do_conversion(S, "PM");
        false -> do_conversion(S, "AM")
    end.

do_conversion(S, AmPm) ->
    SplitHour = hd(string:split(S, ":")),
    SplitRest = hd(string:split(tl(string:split(S, ":")), AmPm)),
    {Hour, _} = string:to_integer(SplitHour),
    case AmPm of
        "AM" -> 
            case Hour of
                12 -> "00" ++ ":" ++ SplitRest;
                _ -> string:right(integer_to_list(Hour), 2, $0) ++ ":" ++ SplitRest
            end;
        "PM" ->
            case Hour of
                12 -> "12" ++ ":" ++ SplitRest;
                _ -> integer_to_list(Hour + 12) ++ ":" ++ SplitRest
            end
    end.

%%====================================================================
%% Internal functions
%%====================================================================
