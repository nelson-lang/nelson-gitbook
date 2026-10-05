#import "../nelson_help.typ": *

= cast <elementary_functions:5_base_conversions.cast>

Converts variable to a different data type

== Syntax

- #raw("R = cast(V, type_destination)");
- #raw("R = cast(V, 'like', W)");

== Input argument

/ V: a variable
/ type\_destination: a string: name of destination data type.
/ W: a variable

== Output argument

/ R: a variable with new data type.

== Description

#strong[cast]; converts variable to a different data type.

 #strong[R \= cast(V, 'like', W)]; converts variable V to sparsity and same data type than W.


== Example

``````matlab
r = cast([3.6 1.2 -2.4], 'like', int64(3))
r = cast([3.6 1.2 -2.4], 'int64')
``````


== See also

#nlink(<types:class>)[class];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
