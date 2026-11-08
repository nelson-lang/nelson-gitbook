#import "nelson_help.typ": *

= dbclear <debugger:dbclear>

Remove breakpoints during debugging.

== Syntax

- #raw("dbclear");
- #raw("dbclear all");
- #raw("dbclear in file");
- #raw("dbclear all in file");
- #raw("dbclear in file at location");
- #raw("dbclear if error");
- #raw("dbclear if caught error");

== Input argument

/ file: File name where breakpoints should be cleared, specified as a character vector or string scalar. A filemarker (\>) can be used to specify a local function.
/ location: Line number of the breakpoint to clear. The line is adjusted the same way #strong[dbstop]; adjusts it, so the line used with #strong[dbstop]; clears the breakpoint.

== Description

#strong[dbclear]; removes breakpoints set for debugging. You can clear all breakpoints, breakpoints in a specific file, breakpoints at a specific location, or the error breakpoints.

 #strong[dbclear]; and #strong[dbclear all]; remove all breakpoints in all files, including #strong[dbstop if error]; and #strong[dbstop if caught error];.

 #strong[dbclear in file]; and #strong[dbclear all in file]; remove all breakpoints in the specified file; the error breakpoints are kept.

 #strong[dbclear in file at location]; removes the breakpoint at the specified location in the file.

 #strong[dbclear if error]; and #strong[dbclear if caught error]; remove the matching error breakpoint.

 Nothing is reported when no breakpoint matches.


== Examples

Clear all breakpoints in a file.

``````matlab

dbstop in buggy at 2
dbstop in buggy at 3
dbstatus
dbclear in buggy
dbstatus

``````

Clear a breakpoint at a specific location.

``````matlab

dbstop in buggy at 2
dbstop in buggy at 3
dbclear in buggy at 3
dbstatus

``````

Stop pausing on errors.

``````matlab

dbstop if error
dbstatus
dbclear if error
dbstatus

``````


== See also

#nlink(<debugger:dbstop>)[dbstop];, #nlink(<debugger:dbstatus>)[dbstatus];, #nlink(<debugger:dbquit>)[dbquit];, #nlink(<debugger:dbstack>)[dbstack];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.16.0], [initial version],
  [2.0.0], [dbclear all in file, dbclear if error, dbclear if caught error; line adjustment; silent when no breakpoint matches],
)

// Author: Allan CORNET
