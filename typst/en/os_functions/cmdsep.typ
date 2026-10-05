#import "nelson_help.typ": *

= cmdsep <os_functions:cmdsep>

Command separator for current operating system.

== Syntax

- #raw("sep = cmdsep()");

== Output argument

/ sep: a string: on windows " & & ", on linux ";"

== Description

#strong[cmdsep]; returns the command separator for current operating system.

 This function is used by Nelson to build command lines for unix and dos operating systems.


== Example

``````matlab
unix("cd c:/ " + cmdsep() + " nelson")
``````


== See also

#nlink(<os_functions:unix>)[unix];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.11.0], [initial version],
)

// Author: Allan CORNET
