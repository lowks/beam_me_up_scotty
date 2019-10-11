-module(learn_record).
-export([show_stuff/1]).

-record(user, {id, name, group, age}).

show_stuff(#user{name=Name, group="admin"}) ->
    Name ++ "hoho";

show_stuff(#user{name=Name}) ->
    "what ? that is your " ++ Name.