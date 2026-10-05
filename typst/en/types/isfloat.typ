#import "nelson_help.typ": *

= isfloat <types:isfloat>

Return true if variable var is a single or double matrix.

== Syntax

- #raw("res = isfloat(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isfloat]; returns a logical 1 if the argument is a single or double matrix and a logical 0 otherwise.
== Examples

``````matlab
A = 3;
res = isfloat(A)
``````

``````matlab
A = single(3);
res = isfloat(A)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<single:single>)[single];, #nlink(<types:isdouble>)[isdouble];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
