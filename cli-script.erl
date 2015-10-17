#!/usr/bin/env escript 

main([Arg]) ->
  case Arg of
    "test" ->
        test();
    "debug" ->
        debug();
    _ ->
      usage()
  end;

main([]) ->
    usage();

main(_) -> 
    usage().


test() ->
    io:format("~s~n", ["Ran test"]).

debug() ->
    io:format("~s~n", ["Ran debug"]).

usage() ->
    io:format("Usage:\n \`run [test|debug]\`~n").
