-module(m).
-export([do_hello_world/0]).
do_hello_world () -> io:fwrite("hello, world\n").


% erl
% c(m).
% m:do_hello_world().
% init:stop().
