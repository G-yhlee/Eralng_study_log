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



do_string() ->
    Str1 = "hello",
    Str2 = "world",
    io:fwrite("~p ~p \n", [Str1,Str2]),
    io:fwrite(io_lib:format("~s ~s \n", [Str1,Str2])),
    io:fwrite(concat(Str1,Str2)),
    chr(Str1,$h) == 1.




% erl
% c(m).
% m:hello_world().
% init:stop().
```