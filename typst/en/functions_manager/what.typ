#import "nelson_help.typ": *

= what <functions_manager:what>

Get Nelson builtin and macro list.

== Syntax

- #raw("list_builtin = what()");
- #raw("[list_builtin, list_macro] = what()");

== Output argument

/ list\_builtin: a cell of strings
/ list\_macro: a cell of strings

== Description

#strong[what]; returns the list of all builtin and macro available in current Nelson's session.


== Example

``````matlab
l = what()
[l, m] = what()
``````


== See also

#nlink(<functions_manager:which>)[which];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
