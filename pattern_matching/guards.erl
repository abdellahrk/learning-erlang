-module(guards).
-compile(export_all).

correct_age(X) when X >= 18, X =< 60 ->
    true;
correct_age(_) ->
    false.

wrong_age(X) when X < 18; X > 60 ->
    true;
wrong_age(_) ->
    false.

test_int(X) when is_integer(X) ->
    true;
test_int(_) ->
    false.