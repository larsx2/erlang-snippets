-module(list_max).
-export([list_max/1]).

list_max([H|T]) -> 
    list_max(T, H).

list_max([H|T], Max) when H > Max ->
    list_max(T, H);
list_max([H|T], Max) ->
    list_max(T, Max);
list_max([], Max) ->
    Max.
