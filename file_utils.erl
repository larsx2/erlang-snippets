-module(file_utils).
-export([test/0, read_file/2]).

%% Open a file and try reading a line or close it on failure 
read_file(Filepath, Proc) ->
    {ok, Fd} = file:open(Filepath, read),
    try read_line(Fd, Proc)
        after file:close(Fd)
    end.

%% Read a line from the file descriptor `Fd`
%% and execute function `Proc` on it.
read_line(Fd, Proc) ->
    case io:get_line(Fd, "") of 
        eof  -> 
            file:close(Fd),
            {eof};
        Line -> 
            Proc(Line),
            read_line(Fd, Proc)
    end.

test() ->
    PrintLine = fun(Line) -> io:format("~s", [Line]) end,
    read_file("test.txt", PrintLine),
    ok.

