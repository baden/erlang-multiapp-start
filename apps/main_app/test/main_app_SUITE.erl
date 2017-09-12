-module(main_app_SUITE).

-include_lib("common_test/include/ct.hrl").
-include_lib("eunit/include/eunit.hrl"). % Eunit macros for convenience

-export([all/0
        ,groups/0
       %,init_per_suite/1, end_per_suite/1
       %,init_per_group/2, end_per_group/2
        ,init_per_testcase/2, end_per_testcase/2
        ]).

-export([fail/1]).

all() -> [
    {group, single}
].

groups() -> [
    {single, [parallel], [fail]}
].

init_per_testcase(_Name, Config) -> Config.

end_per_testcase(_Name, _Config) -> ok.

fail(_Config) ->
    ct:pal("fail Test as fail",[]),
    ?assert(true).
