```erlang
-module(m). 
-compile(export_all). % export([hello_world/0]).



do_hello1() -> 
    io:fwrite("hello, world\n"),
    io:fwrite("~p, ~p\n",[hello,world]).


do_hello2(X)->
    case X of
        french -> 'Bonjour';
        german -> 'Gutentak';
        english -> hello
    end






% erl
% c(m).
% m:hello_world().
% init:stop().
```