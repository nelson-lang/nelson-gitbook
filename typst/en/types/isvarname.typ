#import "nelson_help.typ": *

= isvarname <types:isvarname>

Return true if input is valid variable name.

== Syntax

- #raw("res = isvarname(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isvarname]; returns a logical 1 if the argument is a valid variable name and a logical 0 otherwise.
== Example

``````matlab
isvarname(4)
isvarname('t')
isvarname('8t')
isvarname('t8t')
``````


== See also

#nlink(<types:ischar>)[ischar];, #nlink(<core:namelengthmax>)[namelengthmax];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
