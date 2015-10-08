-module(reverse).
-export([tailrev/1]).

tailrev(L) -> tailrev(L, []).
tailrev([X | Rest], Acc) -> tailrev(Rest, [X | Acc]);
tailrev([], Acc) -> Acc.
