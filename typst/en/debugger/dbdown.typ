#import "nelson_help.typ": *

= dbdown <debugger:dbdown>

Move down the call stack in debug mode.

== Syntax

- #raw("dbdown");
- #raw("dbdown n");

== Input argument

/ n: positive integer scalar specifying the number of levels to move down on the call stack.

== Description

#strong[dbdown]; changes the current workspace and function context to that of the called function or script while in debug mode. This command is the opposite of#strong[dbup]; and can only be used after at least one call to #strong[dbup];.

 Each call to #strong[dbdown]; moves one level down the call stack, stopping at the workspace and function context where execution is paused. Execution can continue without returning to the paused line.

 #strong[dbdown n]; is equivalent to executing #strong[dbdown]; #emph[n]; times.

 This function can only be called from the command line while debugging.


== Examples

Move between calling and called function workspaces while debugging.

``````matlab

function n = myfile(x)
  n = myfunc(x - 1);
end

function z = myfunc(y)
  z = 2 / y;
end

dbstop in myfile>myfunc
myfile(1)
whos
dbup
whos
dbdown
whos

``````

Move down multiple levels on the call stack in one step.

``````matlab

dbdown 2

``````


== See also

#nlink(<debugger:dbup>)[dbup];, #nlink(<debugger:dbstack>)[dbstack];, #nlink(<memory_manager:whos>)[whos];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
