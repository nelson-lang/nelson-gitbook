#import "nelson_help.typ": *

= terminal\_size <console:terminal_size>

Query the size of the terminal window.

== Syntax

- #raw("[r, c] = terminal_size()");

== Output argument

/ \[r, c\]: a vector: rows and columns

== Description

#strong[terminal\_size()]; returns a vector with size of the terminal window in characters (rows and columns).


== Example

``````matlab
terminal_size()
``````


== See also

#nlink(<display_format:disp>)[disp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
