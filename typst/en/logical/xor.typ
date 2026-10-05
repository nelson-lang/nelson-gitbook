#import "nelson_help.typ": *

= xor <logical:xor>

Exclusive or.

== Syntax

- #raw("R = xor(V1, V2)");
- #raw("R = xor(V1, V2, ... , VN)");

== Input argument

/ V1: a matrix.
/ V2: a matrix, same dimensions than V1.
/ VN: a matrix, same dimensions than V1.

== Output argument

/ R: a logical matrix.

== Description

#strong[xor]; performs a logical exclusive-OR.


== Example

``````matlab
x = [0 1 0 1];
y = [0 0 1 1];
R = xor(x, y)
``````


== See also

#nlink(<operators:or>)[or];, #nlink(<operators:and>)[and];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
