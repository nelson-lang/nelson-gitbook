#import "nelson_help.typ": *

= dbstatus <debugger:dbstatus>

List all breakpoints during debugging.

== Syntax

- #raw("dbstatus");
- #raw("b = dbstatus()");

== Output argument

/ b: Structure array listing breakpoints currently in effect.

== Description

#strong[dbstatus]; lists all breakpoints currently set.

 Assigning the output to a variable #strong[b]; allows you to save and restore breakpoints later using #strong[dbstop(b)];.

 The output structure array #strong[b]; contains one element per file with breakpoints. Each element contains:

- #strong[name];: Function name
- #strong[file];: Full path to file containing breakpoints
- #strong[line];: Vector of breakpoint line numbers


== Examples

List all breakpoints in effect.

``````matlab

dbstop in myfile
dbstatus

``````

Save current breakpoints and restore them later.

``````matlab

b = dbstatus();
save saved_breakpoints b
dbclear all
load saved_breakpoints
dbstop(b)

``````


== See also

#nlink(<debugger:dbstop>)[dbstop];, #nlink(<debugger:dbclear>)[dbclear];, #nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbstack>)[dbstack];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
)

// Author: Allan CORNET
