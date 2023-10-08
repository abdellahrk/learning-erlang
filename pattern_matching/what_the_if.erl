-module(what_the_if).
-export([my_if/0, oh_mine/1, help_me/1]).
-compile([debug_info]).

my_if() ->
    if 1 =:= 1 ->
        works
    end,
    if 1 =:= 2; 1 =:= 1 ->
        works
    end,
    if 1 =:= 2; 1=:=1 ->
        fails
    end.

oh_mine(N) ->
    if N =:= 2 -> 
        might_succeed;
        true -> always_does
    end.

help_me(Animal) ->
    Talk = if Animal == cat -> "meow";
              Animal == beef -> "mooo";
              Animal == dog -> "bark";
              Animal == tree -> "bark";
              true-> "other noise"
            end,
    { Animal, "says " ++ Talk ++ "!" }.