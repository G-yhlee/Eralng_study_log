-module(main). 
-compile(export_all).


-define(MACRO1(X, Y), {a, X, b, Y}).
macro2(X,Y) -> {a,X,b,Y}.


main() ->
    % hello_world(),
    % ,
    macro2(x, y)==?MACRO1(x, y)
    .



hello_world() -> 
    io:fwrite("hello, world\n"),
    io:fwrite("~p, ~p\n",[hello,world]).




do_hello2(X)->
    case X of
        french -> 'Bonjour';
        german -> 'Gutentak';
        english -> hello
    end.




% erl
% c(main).
% main:hello_world().
% init:stop().
