#import "../nelson_help.typ": *

= linspace <elementary_functions:1_array_creation_shape.linspace>

linearly spaced vector constructor.

== Syntax

- #raw("V = linspace(s, e)");
- #raw("V = linspace(s, e, n)");

== Input argument

/ s: first value: a scalar, single or double.
/ e: last value: a scalar, single or double.
/ n: Number of points: a scalar, single or double (by default 100).

== Output argument

/ V: result of linspace: an linearly spaced vector.

== Description

#strong[linspace]; generates an linearly spaced vector.


== Example

``````matlab
V = linspace(1+2i, 10+10i, 4)
``````


== See also

#nlink(<elementary_functions:1_array_creation_shape.logspace>)[logspace];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
