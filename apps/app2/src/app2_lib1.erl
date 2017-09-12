-module(app2_lib1).

-export([foo1/1]).

foo1(X) ->
    X + 1.

-ifdef(TEST).
-include_lib("eunit/include/eunit.hrl").

foo1_test() ->
    ?assertEqual(2, foo1(1)),
    done.

-endif.
