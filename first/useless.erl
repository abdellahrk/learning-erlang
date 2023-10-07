-module(useless).
-export([add/2, hello/0, greet_and_add_two/1]).
-compile([debug_info]).
%%  -compile([debug_info, export_all]).

add(A,B) ->
    A + B.

%% Greet the world
hello() -> 
    io:format("Hello, World!~n").

greet_and_add_two(X) ->
    hello(),
    add(X,2).