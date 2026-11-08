#import "nelson_help.typ": *

= dbstop <debugger:dbstop>

Set breakpoints for debugging.

== Syntax

- #raw("dbstop in file");
- #raw("dbstop in file at location");
- #raw("dbstop in file if expression");
- #raw("dbstop in file at location if expression");
- #raw("dbstop if error");
- #raw("dbstop if caught error");
- #raw("dbstop(b)");

== Input argument

/ file: file name where the breakpoint is set, specified as a character vector or string scalar. The file must be accessible on the search path or in the current folder. A filemarker (\>) can be used to specify a local function. A filemarker cannot be combined with #strong[at location];.
/ location: breakpoint location in the file: a line number, or the name of a local function (its first executable line is used). A breakpoint requested on a comment, a blank line or a function declaration moves to the next executable line. The #strong[end]; line of a for or while loop is a breakpoint location of its own: execution pauses there at every iteration.
/ expression: condition evaluated in the workspace of the paused function each time the line is reached. Execution pauses only when the expression is a scalar logical or numeric value that is true. A non-scalar value or an expression that fails raises a warning and pauses execution anyway. A syntax error is rejected when the breakpoint is set. Setting a breakpoint again on the same line replaces its condition.
/ b: structure array previously returned by #strong[dbstatus];, containing saved breakpoints to restore. The seven fields #strong[name];, #strong[file];, #strong[line];, #strong[anonymous];, #strong[expression];, #strong[cond]; and #strong[identifier]; are required; conditions and error breakpoints are restored as well.

== Description

#strong[dbstop]; sets breakpoints in programs for interactive debugging. When execution reaches a breakpoint, execution pauses, the line about to run is displayed and the interpreter enters debug mode (prompt #strong[K\>\>];).

 #strong[dbstop if error]; pauses execution on the line that raises a run-time error not caught by a #strong[try];\/#strong[catch]; block. The error is reported, the variables of the paused function can be inspected, and #strong[dbcont];, #strong[dbstep]; or #strong[dbquit]; end the execution.

 #strong[dbstop if caught error]; pauses execution on a run-time error raised inside the #strong[try]; part of a #strong[try];\/#strong[catch]; block; #strong[dbcont]; resumes in the #strong[catch]; block. The conditions #strong[warning]; and #strong[naninf]; are not supported.

 Breakpoints are kept until #strong[dbclear]; removes them or the session ends. This function can only be called from the command line.

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
dbstop in myfile at myfunc

``````

Pause only when a condition holds.

``````matlab

dbstop in buggy at 3 if n > 2
dbstatus

``````

Pause on the line raising an uncaught error.

``````matlab

dbstop if error
buggy(1:5)
dbquit
dbclear if error

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
  [2.0.0], [conditional breakpoints, dbstop if error, dbstop if caught error, local function as location, seven-field dbstatus structure],
)

// Author: Allan CORNET
