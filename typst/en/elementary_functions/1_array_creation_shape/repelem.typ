#import "../nelson_help.typ": *

= repelem <elementary_functions:1_array_creation_shape.repelem>

Repeat copies of array elements.

== Syntax

- #raw("B = repelem(V, n)");
- #raw("B = repelem(V, r)");
- #raw("B = repelem(A, r, c)");

== Input argument

/ V: vector.
/ A: matrix.
/ n: repetition count: scalar integer.
/ r, c: repetition counts: scalar integer or vector.

== Output argument

/ B: result: vector or matrix.

== Description

#strong[repelem(V, n)]; repeats each element of vector #strong[V]; #strong[n]; times.

 #strong[repelem(V, r)]; uses a vector #strong[r]; to repeat element #strong[V(i)]; exactly #strong[r(i)]; times.

 #strong[repelem(A, r, c)]; repeats matrix rows #strong[r]; times and columns #strong[c]; times.


== Example

``````matlab
repelem([1 2 3], 2)
repelem([1 2 3], [1 2 3])
``````


== See also

#nlink(<elementary_functions:1_array_creation_shape.repmat>)[repmat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
