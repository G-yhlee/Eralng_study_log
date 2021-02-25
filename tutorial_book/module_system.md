Working with the interactive shell is often considered a vital part of using dynamic programming languages. It is useful to test all kinds of code and programs. Most of the basic data types of Erlang were used without even needing to open a text editor or saving files. You could drop your keyboard, go play ball outside and call it a day, but you would be a terrible Erlang programmer if you stopped right there. Code needs to be saved somewhere to be used!

This is what modules are for. Modules are a bunch of functions regrouped in a single file, under a single name. Additionally, all functions in Erlang must be defined in modules. You have already used modules, perhaps without realizing it. The BIFs mentioned in the previous chapter, like hd or tl, actually belong to the erlang module, as well as all of the arithmetic, logic and Boolean operators. BIFs from the erlang module differ from other functions as they are automatically imported when you use Erlang. Every other function defined in a module you will ever use needs to be called with the form Module:Function(Arguments).


1> erlang:element(2, {a,b,c}).
b
2> element(2, {a,b,c}).
b
3> lists:seq(1,4).
[1,2,3,4]
4> seq(1,4).
** exception error: undefined shell command seq/2


Here, the seq function from the list module was not automatically imported, while element was. The error 'undefined shell command' comes from the shell looking for a shell command like f() and not being able to find it. There are some functions from the erlang module which are not automatically imported, but they're not used too frequently.

Logically, you should put functions about similar things inside a single module. Common operations on lists are kept in the lists module, while functions to do input and output (such as writing to the terminal or in a file) are regrouped in the io module. One of the only modules you will encounter which doesn't respect that pattern is the aforementioned erlang module that has functions which do math, conversions, deal with multiprocessing, fiddle with the virtual machine's settings, etc. They have no point in common except being built-in functions. You should avoid creating modules like erlang and instead focus on clean logical separations.