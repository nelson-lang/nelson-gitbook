#import "nelson_help.typ": *

= rmfield <data_structures:rmfield>

Remove fields from structure.

== Syntax

- #raw("s = rmfield(st, field)");

== Input argument

/ st: a structure.
/ field: a string, cell of strings, or char.

== Output argument

/ s: a structure without field.

== Description

#strong[s \= rmfield(st, field)]; removes the specified field from structure array.


== Example

``````matlab
example.a = 1
example.b = 'nelson'
example.c = []
rmfield(example, 'b')
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
