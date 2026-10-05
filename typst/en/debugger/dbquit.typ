#import "nelson_help.typ": *

= dbquit <debugger:dbquit>

Quit debug mode.

== Syntax

- #raw("dbquit");
- #raw("dbquit all");

== Input argument

/ all: optional keyword to quit debug mode for all paused functions.

== Description

#strong[dbquit]; terminates debug mode. The command window returns to the standard prompt (#raw("\n        >\n        >\n      ");). The file being executed is not completed and no output arguments are returned. All breakpoints remain active.

 If the debugger is active in more than one function, #strong[dbquit]; exits debug mode only for the currently active function. Other paused functions remain in debug mode until #strong[dbquit]; is called again.

 If execution is paused in a function that was reached by stepping into another function, #strong[dbquit]; terminates debugging for both functions.

 #strong[dbquit all]; terminates debugging for all files simultaneously.

 This function can only be called from the command line while debugging.


== Examples

Quit debugging for the active function.

``````matlab

function z = buggy(x)
  n = length(x);
  z = (1:n) / x';
end

dbstop in buggy
buggy(5)
dbquit

``````

Quit debugging for all paused functions.

``````matlab

dbquit all

``````


== See also

#nlink(<debugger:dbcont>)[dbcont];, #nlink(<debugger:dbclear>)[dbclear];, #nlink(<debugger:dbstack>)[dbstack];, #nlink(<debugger:dbstatus>)[dbstatus];, #nlink(<debugger:dbstop>)[dbstop];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
