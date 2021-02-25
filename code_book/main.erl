-module(main). 
-compile(export_all).
hello_world() -> 
    io:fwrite("hello, world\n"),
    io:fwrite("~p, ~p\n",[hello,world]).


% erl
% c(m).
% m:hello_world().
% init:stop().
