#import "nelson_help.typ": *

= dbcont <debugger:dbcont>

Resume execution from a paused breakpoint.

== Syntax

- #raw("dbcont");

== Description

#strong[dbcont]; resumes execution of file after pausing at a breakpoint. Execution continues until another breakpoint is encountered, a pause condition is met, an error occurs, or execution completes successfully.

 Use #strong[dbcont]; to continue execution after examining workspace variables or debugging code.

 Note: If you want to edit a file during debugging, it is recommended to first exit debug mode using #strong[dbquit]; to avoid unexpected behavior.


== Example

Resume execution after a breakpoint in a function.

``````matlab

function z = buggy(x)
  n = length(x);
  z = (1:n) / x';
end

dbstop in buggy at 2
buggy(5)
dbcont

``````


== See also

#nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbclear>)[dbclear];, #nlink(<debugger:dbstatus>)[dbstatus];, #nlink(<debugger:dbstop>)[dbstop];, #nlink(<debugger:dbstep>)[dbstep];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
