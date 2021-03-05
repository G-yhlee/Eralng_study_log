```erlang
do_list() ->
    List1 = [1,2,3],
    List2 = [4,5,6],
    [H|T]=[hd(List3 = List1 ++ List2)|List1],
    H == 1,
    List4 = [N || N <- List1, N rem 2 == 0 ],
    io:fwrite(List3),
    CityWeather = [{wonju,20},{seoul,15},{busan,39},{daegu,44}],
    HotPlace = [{City, Temp} || {City,Temp} <- CityWeather, Temp >= 30 ].

do_list2() ->
    List1 = [1,2,3],
    List2 = [2*N || N <- List1].
```