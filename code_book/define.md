```erlang
% 매크로 정의
-define(Const, Replacement).
-define(Func(Var1,...,VarN), Replacement).

?Const
?Func(Arg1,...,ArgN)


```
- 매크로가 여러 모듈에서 사용 가능될 경우, 매크로 정의를 include file에 하는것을 권장한다
- 매크로는 define된 이후에 사용 가능하다.



##### 사용 예
- ex) 상수로 정의된 경우 
```erlang
-define(TIMEOUT, 200).
TIMEOUT == 200.
```
- ex) 함수로 정의된 경우
```erlang
-define(MACRO1(X, Y), {a, X, b, Y}).
macro2(X,Y) -> {a,X,b,Y}.
?MACRO1(c,d) == macro2(c,d)
```


```erlang
compile:file(File, ['P']).
% p 옵션으로 컴파일 하면, p 파일에 전처리 결과가 나타난다. 

```


##### 사전 정의된 매크로
```erlang
% https://erlang.org/doc/reference_manual/macros.html
?MODULE
?MODULE_STRING.
?FILE.
?LINE.
?MACHINE.
?FUNCTION_NAME
?FUNCTION_ARITY
?OTP_RELEASE
```

##### 매크로 오버로딩
```erlang
-define(F0(), c).
-define(F1(A), A).
-define(C, m:f).

    ?F0. ==  No, an empty list of arguments expected.
    ?F1(A, A). ==  No, exactly one argument expected.
    ?C(). == m:f().
```

##### 흐름제어 매크로 종류
```erlang
-undef(Macro).
% Causes the macro to behave as if it had never been defined.
-ifdef(Macro).
%Evaluate the following lines only if Macro is defined.
-ifndef(Macro).
%Evaluate the following lines only if Macro is not defined.
-else.
%Only allowed after an ifdef or ifndef directive. If that condition is false, the lines following else are evaluated instead.
-endif.
%Specifies the end of an ifdef, an ifndef directive, or the end of an if or elif directive.
-if(Condition).
%Evaluates the following lines only if Condition evaluates to true.
-elif(Condition).
%Only allowed after an if or another elif directive. If the preceding if or elif directives do not evaluate to true, and the Condition evaluates to true, the lines following the elif are evaluated instead.
```
##### 사용 예
```erlang
-module(m).
-ifdef(debug).
-define(LOG(X), io:format("{~p,~p}: ~p~n", [?MODULE,?LINE,X])).
-else.
-define(LOG(X), true).
-endif.
```

<!-- ```erlang
% erlc -Ddebug m.erl
or
1> c(m, {d, debug}).
{ok,m}
``` -->
