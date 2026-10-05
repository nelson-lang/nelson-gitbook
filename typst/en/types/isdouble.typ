#import "nelson_help.typ": *

= isdouble <types:isdouble>

Return true if variable var is a double matrix.

== Syntax

- #raw("res = isdouble(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isdouble]; returns a logical 1 if the argument is a double matrix and a logical 0 otherwise.
== Examples

``````matlab
A = 3;
res = isdouble(A)
``````

``````matlab
A = single(3);
res = isdouble(A)
``````

``````matlab
A = single([3, i]);
res = isdouble(A)
``````

``````matlab
A = [3, i];
res = isdouble(A)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<single:single>)[single];, #nlink(<double:double>)[double];, #nlink(<types:isfloat>)[isfloat];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
