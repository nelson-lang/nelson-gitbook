#import "nelson_help.typ": *

= getfield <data_structures:getfield>

Returns value of a field in a struct.

== Syntax

- #raw("value = getfield(st, field)");

== Input argument

/ st: a structure.
/ field: a string.

== Output argument

/ value: the value of a field from a structure.

== Description

#strong[value \= getfield(st, field)]; returns the value of the field named #strong[field]; from a structure.


== Example

``````matlab
example.a = 1
example.b = 'nelson'
example.c = []
getfield(example, 'b')
``````


== See also

#nlink(<data_structures:struct>)[struct];, #nlink(<data_structures:fieldnames>)[fieldnames];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
