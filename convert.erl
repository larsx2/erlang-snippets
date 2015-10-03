-module(convert).
-export([farenheit_to_celcius/1, celcius_to_farenheit/1]).

farenheit_to_celcius({f, F}) ->
    {c, (F-32) * 5/9}.

celcius_to_farenheit({c, C}) ->
    {f, 32 + C * 9/5}.
