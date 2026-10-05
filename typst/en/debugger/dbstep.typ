#import "nelson_help.typ": *

= dbstep <debugger:dbstep>

Execute next executable line during debugging.

== Syntax

- #raw("dbstep");
- #raw("dbstep in");
- #raw("dbstep out");
- #raw("dbstep nlines");

== Input argument

/ nlines: Positive integer specifying the number of executable lines to step. Execution pauses at breakpoints encountered along the way.

== Description

#strong[dbstep]; executes the next executable line of the current file during debugging, skipping breakpoints in functions called by that line.

 #strong[dbstep in]; steps into any function called on the current line, pausing at the first executable line of the called function.

 #strong[dbstep out]; completes execution of the current function and pauses just after returning to the caller. Execution pauses at any breakpoint encountered along the way.

 #strong[dbstep nlines]; executes the specified number of lines, pausing at any breakpoint encountered.

 These commands can only be used from the command line while debugging.


== Examples

Step over a called function.

``````matlab

function n = myfile(x)
  n = myfunction(x-1);
end

function z = myfunction(y)
  z = 2/y;
end

dbstop in myfile
myfile(2);
dbstep

``````

Step into a called function.

``````matlab

dbstop in myfile
myfile(2);
dbstep in

``````

Step out of the current function.

``````matlab

dbstep out

``````

Step multiple lines in one command.

``````matlab

dbstep 4

``````


== See also

#nlink(<debugger:dbstop>)[dbstop];, #nlink(<debugger:dbcont>)[dbcont];, #nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbstatus>)[dbstatus];, #nlink(<debugger:dbstack>)[dbstack];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
