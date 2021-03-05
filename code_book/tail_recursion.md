
```erlang
-module(m).
-import(string,[len/1,concat/2,chr/2,substr/3,str/2,to_lower/1,to_upper/1]).
-compile(export_all).

% - export([main/1,main/2,sum3/1,sum2/2]).

main([]) -> 1;
main(X)->
    % find_factorial(3).
    % factorial(3).
    sum3(X).
main(X,Y) -> sum2(X,Y).

what_is_atom()->
     atom_stuff == 'atom_stuff'.


hello_world() -> 
    io:fwrite("hello, world\n"),
    io:fwrite("~p, ~p\n",[hello,world]).


info() ->
    m:module_info().

do_math(A,B) ->
    math:log10(1000),
    random:uniform(10),
    A =:= B.

do_tuple() ->
    Data = {1,2,3},
    {A,B,C} = {1,2,3},
    {D,_,_} = {1,2,3},
    A == D.


do_if(X) ->
    if X < 5 -> preschool
    ; X == 5 -> middleschool
    ; X > 5 -> grade_school
    end.

do_type() ->
    [is_atom(name),
    is_float(3.14),
    is_integer(10),
    is_boolean(false),
    is_list([1,2,3]),
    is_tuple({height,6.24})].

factorial(N) when N == 0 -> 1;
factorial(N) when N > 0 -> N * factorial(N-1).


%for
do_for(0,_) ->ok;
do_for(Max,Min) when Max > 0 -> 
    io:fwrite("Num: ~p\n",[Max]),
    do_for(Max-1,Min).



% do_map 
do_map() ->
    Map = #{f_name => 'yunho', l_name => 'lee'},
    maps:get(f_name,Map) == 'yunho',
    [
        maps:keys(Map) == [f_name,l_name],
        maps:values(Map) == ['yunho',lee],
        maps:find(f_name,Map) == {ok,yunho},
        maps:put(age,31,Map) == #{age => 31,f_name => yunho,l_name => lee}
    ].

% do_record
-record(salary,{name="",money=0.00}).
do_record() ->
    NewComer = #salary{name="신입사원",money = 100},
    NewComer_001 = NewComer#salary{name="lee yun ho"},
    NewComer_002 = NewComer#salary{name="hong gil dong"},
    [NewComer_001,NewComer_002]==[{salary,"lee yun ho",100},{salary,"hong gil dong",100}],
    [NewComer_001#salary.money,NewComer_001#salary.name]==[100,"lee yun ho"].

    % io:fwrite("~p owes $ ~p\n",[Sally2#customer.name,Sally2#customer.bal])

% sum1
sum1([]) -> 0;
sum1([H|T]) -> H + sum1(T).


% sum2
sum2(List) -> sum2(List,0).
sum2([],Acc) -> Acc;
sum2([H|T],Acc) -> sum2(T,H+Acc).


% sum3 
sum3(N) -> sum3(N,0).
sum3(0,Acc) -> Acc;
sum3(N,Acc) -> sum3(N-1,Acc+N).


% double
double(X) -> X*2.
triple(X) -> X*3.

% do_math
do_math() -> 
    [lists:map(fun double/1, [1,2,3])==[2,4,6],
    lists:map(fun triple/1, [1,2,3])==[3,6,9]].

% do_fun
do_fun(N) ->
    F = fun(X) -> X*X end,
    F(N).


% file
do_write(N) ->
    {ok,Fh} = file:open("MyFile.txt",[write]),
    file:write(Fh,N).

do_write2(N) ->
    {ok,Fh} = file:open("MyFile.txt",[append]),
    file:write(Fh,N).

do_read(N) ->
    try
        {ok,File} = file:open(N,[read]),
        file:read(File,1024*1024)
    catch
        _:_ -> "File Doesn't Exist"
    end.


% eception
do_divide(N) ->     
    try
        2/N
    catch
        error:badarith -> "Can't divide by zero"
    end.


% macro
-define(m_add(X,Y),{X+Y}).
do_macro(X,Y) -> ?m_add(X,Y).
    




% https://www.youtube.com/watch?v=IEhwc2q1zG4&t=3s ::52:32

```