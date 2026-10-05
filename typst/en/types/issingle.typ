#import "nelson_help.typ": *

= issingle <types:issingle>

Return true if variable var is a single matrix.

== Syntax

- #raw("res = issingle(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[issingle]; returns a logical 1 if the argument is a single matrix and a logical 0 otherwise.
== Examples

``````matlab
A = 3.6;
res = issingle(A)
``````

``````matlab
B = single([1 ; 3]);
res = issingle(B)
``````


== See also

#nlink(<types:isdouble>)[isdouble];, #nlink(<single:single>)[single];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
