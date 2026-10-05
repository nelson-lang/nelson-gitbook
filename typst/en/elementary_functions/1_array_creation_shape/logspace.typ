#import "../nelson_help.typ": *

= logspace <elementary_functions:1_array_creation_shape.logspace>

logarithmically spaced vector constructor.

== Syntax

- #raw("V = logspace(s, e)");
- #raw("V = logspace(s, e, n)");

== Input argument

/ s: first value: a scalar, single or double.
/ e: last value: a scalar, single or double.
/ n: Number of points: a scalar, single or double (by default 100).

== Output argument

/ V: result of logspace: an logarithmically spaced vector.

== Description

#strong[logspace]; generates an logarithmically spaced vector.


== Example

``````matlab
V = logspace(1+2i, 10+10i, 4)
``````


== See also

#nlink(<elementary_functions:1_array_creation_shape.linspace>)[linspace];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
