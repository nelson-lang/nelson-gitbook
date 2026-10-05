#import "nelson_help.typ": *

= dbup <debugger:dbup>

Move up the call stack in debug mode.

== Syntax

- #raw("dbup");
- #raw("dbup n");

== Input argument

/ n: positive integer scalar specifying the number of levels to move up on the call stack.

== Description

#strong[dbup]; changes the current workspace and function context to that of the calling function or script while in debug mode. This allows inspection of the caller workspace to understand how input arguments were produced.

 Each call to #strong[dbup]; moves one level up the call stack, stopping at the base workspace. Execution can continue without returning to the original paused line.

 #strong[dbup n]; is equivalent to executing #strong[dbup]; #emph[n]; times.

 This function can only be called from the command line while debugging.


== Examples

View the workspace of a calling function while debugging.

``````matlab

function n = myfile(x)
  n = myfunc(x - 1);
end

function z = myfunc(y)
  z = 2 / y;
end

dbstop in myfile>myfunc
myfile(1)
dbup
whos

``````

Move up multiple levels on the call stack in one step.

``````matlab

dbup 2

``````


== See also

#nlink(<debugger:dbdown>)[dbdown];, #nlink(<debugger:dbstack>)[dbstack];, #nlink(<memory_manager:whos>)[whos];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
