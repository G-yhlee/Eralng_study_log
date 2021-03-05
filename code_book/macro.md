```erlang
- module(m).
- compile(export_all).

% macro
-define(macro_add(X,Y),{X+Y}).
do_macro(X,Y) -> ?macro_add(X,Y).
    





```