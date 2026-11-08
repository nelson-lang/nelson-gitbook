#import "nelson_help.typ": *

= dbstatus <debugger:dbstatus>

List all breakpoints during debugging.

== Syntax

- #raw("dbstatus");
- #raw("dbstatus file");
- #raw("dbstatus -completenames");
- #raw("dbstatus file -completenames");
- #raw("b = dbstatus(...)");

== Input argument

/ file: Only the breakpoints of this file are listed; the error breakpoints are not included.
/ -completenames: Shows the full path of the file followed by the function name instead of the function name alone.

== Output argument

/ b: Structure array listing breakpoints currently in effect.

== Description

#strong[dbstatus]; lists all breakpoints currently set, one line per file: #strong[Breakpoint for buggy is on line 3.]; or #strong[Breakpoints for buggy are on lines 2, 3.];, followed by the condition of each conditional breakpoint, then by #strong[Stop if error.]; and #strong[Stop if caught error.]; when these error breakpoints are set.

 Assigning the output to a variable #strong[b]; allows you to save and restore breakpoints later using #strong[dbstop(b)];.

 The output structure array #strong[b]; contains one element per file with breakpoints and one element per error breakpoint. Each element contains:

- #strong[name];: function name (empty for an error breakpoint)
- #strong[file];: full path to the file containing the breakpoints
- #strong[line];: row vector of breakpoint line numbers
- #strong[anonymous];: row vector of zeros (anonymous function breakpoints are not supported)
- #strong[expression];: cell row of the conditions, one per line, empty when unconditional
- #strong[cond];: #strong['error']; or #strong['caught error']; for an error breakpoint, empty otherwise
- #strong[identifier];: #strong[{'all'}]; for an error breakpoint, empty otherwise


== Examples

List all breakpoints in effect.

``````matlab

dbstop in myfile
dbstatus
dbstatus -completenames

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
  [2.0.0], [file filter, -completenames, seven-field structure with conditions and error breakpoints],
)

// Author: Allan CORNET
