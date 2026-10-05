#import "nelson_help.typ": *

= dbstop <debugger:dbstop>

Set breakpoints for debugging.

== Syntax

- #raw("dbstop in file");
- #raw("dbstop in file at location");
- #raw("dbstop(b)");

== Input argument

/ file: file name where the breakpoint is set, specified as a character vector or string scalar. The file must be accessible on the search path or in the current folder. A filemarker (\>) can be used to specify a local function.
/ location: breakpoint location in the file. a line number.
/ b: structure array previously returned by #strong[dbstatus];, containing saved breakpoints to restore.

== Description

#strong[dbstop]; sets breakpoints in programs for interactive debugging. When execution reaches a breakpoint, execution pauses and the interpreter enters debug mode.

 Breakpoints can be set at specific files or at specific locations.

 This function can only be called from the command line.

 Text editor debugging features integrate with these functions for interactive debugging.

 See also the #nlink(<text_editor:debugging_workflow>)[Debugging Workflow]; for an overview of debugging in Nelson.


== Examples

Pause execution at the first executable line of a function.

``````matlab

function z = buggy(x)
  n = length(x);
  z = (1:n) / x';
end

dbstop in buggy
buggy(1:5)

``````

Set a breakpoint at a local function.

``````matlab

dbstop in myfile>myfunc

``````

Restore previously saved breakpoints.

``````matlab

b = dbstatus();
dbclear all
dbstop(b)

``````


== See also

#nlink(<debugger:dbclear>)[dbclear];, #nlink(<debugger:dbcont>)[dbcont];, #nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbstatus>)[dbstatus];, #nlink(<debugger:dbstack>)[dbstack];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
