


```erlang
-module(hello).
-export([hello_world/0]).
hello_world() -> io:fwrite("hello, world\n").


% erl
% c(hello).
% hello:hello_world().
% init:stop().

```