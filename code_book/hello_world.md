```erlang
-module(m). 
-compile(export_all). % export([hello_world/0]).
hello_world() -> 
    io:fwrite("hello, world\n"),
    io:fwrite("~p, ~p\n",[hello,world]).
% erl
% c(m).
% m:hello_world().
% init:stop().
```