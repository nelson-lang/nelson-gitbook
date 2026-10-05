#import "nelson_help.typ": *

= unix <os_functions:unix>

Execute commands with the operating system shell.

== Syntax

- #raw("status = unix(command)");
- #raw("[status, output, duration] = unix(command)");
- #raw("[status, outputs, duration] = unix(commands)");

== Input argument

/ command: string scalar or character vector: command to execute in the operating system shell.
/ commands: string array or cell array of character vectors executed as multiple commands.
/ timeouts: scalar or vector of timeout values in seconds.

== Output argument

/ status: integer exit status returned by the command.
/ output: text captured from command output.
/ duration: execution duration in milliseconds.

== Description

unix executes one command or a collection of commands through the operating system shell and returns exit status values.

 With output arguments, Nelson can also return command output text and execution durations. unix follows the same command execution model as system.


== Used function(s)

system

== Example

Run a shell command and capture its output.

``````matlab
[status, output] = unix('echo Nelson')
``````


== See also

#nlink(<os_functions:system>)[system];, #nlink(<os_functions:dos>)[dos];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
