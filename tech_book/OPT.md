1. erlang OTP란

erlang OPT는 Open Telecom Platform의 약자입니다. 
여기서 Telecom이라는 부분 때문에 오해를 사는 부분이 있는데,erlang OTP는 매우 generic한 Actor Model입니다. Akka Document에도 알 수 있듯, 대표적인 Actor Model인 Akka에도 erlang OTP를 계승 발전하여 만든 부분이 많습니다.(Akka의 원래 이름도 Scala OTP였습니다. 그 흔적은 다음에서 찾을 수 있습니다. https://github.com/jboner/scala-otp) 그렇다면 Akka의 조상 격인 erlang OTP에 대해서 설명을 시작하겠습니다.(그렇다고 erlang/OTP가 구식이라는 것은 아닙니다. 현재 erlang과 OTP는 계속 새 버전이 나오고 있으며, 발전중입니다.)

OTP의 구성을 말하자면 아래와 같은 그림으로 표현할 수 있습니다.



출처: https://project-ktz.tistory.com/entry/erlang-OTP란 [ktz의 concurrency]


The Erlang language is described in the Erlang Reference Manual. An Erlang tutorial can be found in Getting Started With Erlang.
In addition to the documentation here Erlang is described in several recent books like:

"Introducing Erlang" from O'Reilly.
"Learn You Some Erlang for Great Good!" from No Starch Press.
"Erlang Programming" from O'Reilly.
"Programming Erlang" from Pragmatic.
"Erlang and OTP in Action" from Manning.
"Designing for Scalability with Erlang/OTP" from O'Reilly.
These books are highly recommended as a start for learning Erlang.

Erlang/OTP is divided into a number of OTP applications. An application normally contains Erlang modules. Some OTP applications, such as the C interface erl_interface, are written in other languages and have no Erlang modules.
On a Unix system you can view the manual pages from the command line using
    % erl -man <module>
You can of course use any editor you like to write Erlang programs, but if you use Emacs there exists editing support such as indentation, syntax highlighting, electric commands, module name verification, comment support including paragraph filling, skeletons, tags support and more. See the Tools application for details.
There are also Erlang plugins for other code editors Vim (vim-erlang) , Atom , Eclipse (ErlIDE) and IntelliJ IDEA.

When developing with Erlang/OTP you usually test your programs from the interactive shell (see Getting Started With Erlang) where you can call individual functions. There is also a number of tools available, such as the graphical Debugger and the Observer tool for inspection of system information, ets and mnesia tables etc.
Also note that there are some shell features like history list (control-p and control-n), in line editing (Emacs key bindings) and module and function name completion (tab) if the module is loaded.

OpenSource users can ask questions and share experiences on the Erlang questions mailing list.
Before asking a question you can browse the mailing list archive and read the Frequently Asked Questions.
Additional information and links of interest for Erlang programmers can be found on the Erlang Open Source site http://www.erlang.org.