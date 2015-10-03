-module(hello).
-export([hello_world/0]).

hello_world() ->
    io:fwrite("Hello, World!\n"),
    io:format("Hello, World!~n"),
    io:format("Hello, ~s!~n", ["World"]).
