# system

# dos

# unix

Shell command execution.

## Syntax

- status = system(command)
- status = system(command, timeout)
- status = dos(command)
- status = unix(command)
- status = unix(commands)
- [status, output, duration] = system(command)
- [status, output, duration] = dos(command)
- [status, output, duration] = unix(command)
- [status, output, duration] = system(command, '-echo')
- [status, output, duration] = dos(command, '-echo')
- [status, output, duration] = unix(command, '-echo')
- [s, outputs, duration] = unix(commands)
- [s, outputs, duration] = unix(commands, timeouts)

## Input argument

- command - a string: command to execute in command shell.
- commands - a cell of string or a string array: commands to execute in command shell in parallel.
- timeout - an integer value (scalar): kill process using timeout in seconds.
- timeouts - an integer value (scalar: applied to all commands or vector: one by command): kill process using timeout in seconds.

## Output argument

- status - an integer value: exit code value of the command.
- output - a string: output of the command.
- duration - integer value: duration (milliseconds).
- s - an matrix of integer value: exit code value of the commands (same dimensions than commands).
- output - a string array: output of the commands.
- duration - an matrix of integer value: duration of each execution (milliseconds).

## Description

  <p><b>system</b> sends a string to the operating system for execution. Standard output and standard errors of the shell command are written in the calling shell.</p>
  <p><b>[status, output] = system(command, '-echo')</b> forces the output to the Command Window, even though it is also being assigned into a variable.</p>
  <p>Callback functions cannot be called until <b>system</b> command is not finished.</p>
  <p>Nelson will convert characters to the encoding that your operating system shell accepts (ANSI on Windows by default, UTF-8 on others systems).</p>
  <p>command can be interrupted with <b>CTRL-C</b> key, in this case status code returned will be 258 (WAIT_TIMEOUT) on Windows and 134 on others platforms (128 + SIGABRT)<b>output </b> contains 'ABORTED'.</p>
  <p>if timeout value is 0. timeout disabled.</p>

## Examples

```matlab
[s,w] = system('dir');
[s,w] = system('dir','-echo');
```

```matlab
[s,w] = system(["echo hello", "dir", "echo world"])
```

```matlab
tic();[s, w, d] = system(["PING -n 5 127.0.0.1>nul", "PING -n 7 127.0.0.1>nul", "PING -n 10 127.0.0.1>nul"]), toc()
```

```matlab
tic();[s, w, d] = system(["PING -n 5 127.0.0.1>nul", "PING -n 7 127.0.0.1>nul", "PING -n 10 127.0.0.1>nul"], [1, 5, 3]), toc()
```

To detach an system command, include the trailing character, &, in the command argument.

```matlab
[s,w] = system('notepad &');
```

## See also

[winopen](winopen.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
