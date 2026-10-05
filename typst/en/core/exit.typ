#import "nelson_help.typ": *

= exit <core:exit>

Terminate Nelson program (same as quit)

== Syntax

- #raw("exit");
- #raw("exit(status)");
- #raw("exit('force')");
- #raw("exit('cancel')");
- #raw("exit(status, 'force')");

== Description

This function is equivalent to the #strong[quit]; function.


== See also

#nlink(<core:quit>)[quit];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
