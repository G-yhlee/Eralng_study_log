-module(main). 
-compile(export_all).
hello_world() -> 
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
