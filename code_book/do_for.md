```erlang
do_for(0,_) ->ok;
do_for(Max,Min) when Max > 0 -> 
    io:fwrite("Num: ~p\n",[Max]),
    do_for(Max-1,Min).


```