-module(in_case).
-export([insert/2, age/1]).

insert(X, []) ->
    [X];
insert(X, Set) ->
    case lists:member(X,Set) of 
        true -> Set;
        false -> [X|Set]
    end.

age(Person) ->
    case Person of 
        {infant, N} when N >= 0, N < 2 ->
            'Infant';
        {child, N} when N >= 2, N =< 7 ->
            'Child';
        {teenager, N} when N >= 8, N =< 19 ->
            'Teenager';
        _ ->
            'Adult'
    end.