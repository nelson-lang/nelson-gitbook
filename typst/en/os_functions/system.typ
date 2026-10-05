#import "nelson_help.typ": *

= system <os_functions:system>

Shell command execution.

== Syntax

- #raw("status = system(command)");
- #raw("status = system(command, timeout)");
- #raw("status = dos(command)");
- #raw("status = unix(command)");
- #raw("status = unix(commands)");
- #raw("[status, output, duration] = system(command)");
- #raw("[status, output, duration] = dos(command)");
- #raw("[status, output, duration] = unix(command)");
- #raw("[status, output, duration] = system(command, '-echo')");
- #raw("[status, output, duration] = dos(command, '-echo')");
- #raw("[status, output, duration] = unix(command, '-echo')");
- #raw("[s, outputs, duration] = unix(commands)");
- #raw("[s, outputs, duration] = unix(commands, timeouts)");

== Input argument

/ command: a string: command to execute in command shell.
/ commands: a cell of string or a string array: commands to execute in command shell in parallel.
/ timeout: an integer value (scalar): kill process using timeout in seconds.
/ timeouts: an integer value (scalar: applied to all commands or vector: one by command): kill process using timeout in seconds.

== Output argument

/ status: an integer value: exit code value of the command.
/ output: a string: output of the command.
/ duration: integer value: duration (milliseconds).
/ s: an matrix of integer value: exit code value of the commands (same dimensions than commands).
/ output: a string array: output of the commands.
/ duration: an matrix of integer value: duration of each execution (milliseconds).

== Description

#strong[system]; sends a string to the operating system for execution. Standard output and standard errors of the shell command are written in the calling shell.

 #strong[\[status, output\] \= system(command, '-echo')]; forces the output to the Command Window, even though it is also being assigned into a variable.

 Callback functions cannot be called until#strong[system]; command is not finished.

 Nelson will convert characters to the encoding that your operating system shell accepts (ANSI on Windows by default, UTF-8 on others systems).

 command can be interrupted with#strong[CTRL-C]; key, in this case status code returned will be 258 (WAIT\_TIMEOUT) on Windows and 134 on others platforms (128 + SIGABRT)#strong[output]; contains 'ABORTED'.

 if timeout value is 0. timeout disabled.


== Examples

``````matlab
[s,w] = system('dir');
[s,w] = system('dir','-echo');
``````

``````matlab
[s,w] = system(["echo hello", "dir", "echo world"])
``````

``````matlab
tic();[s, w, d] = system(["PING -n 5 127.0.0.1>nul", "PING -n 7 127.0.0.1>nul", "PING -n 10 127.0.0.1>nul"]), toc()
``````

``````matlab
tic();[s, w, d] = system(["PING -n 5 127.0.0.1>nul", "PING -n 7 127.0.0.1>nul", "PING -n 10 127.0.0.1>nul"], [1, 5, 3]), toc()
``````

To detach an system command, include the trailing character, &, in the command argument.

``````matlab
[s,w] = system('notepad &');
``````


== See also

#nlink(<os_functions:winopen>)[winopen];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
