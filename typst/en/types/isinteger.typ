#import "nelson_help.typ": *

= isinteger <types:isinteger>

Return true if variable var is a integer type array.

== Syntax

- #raw("res = isinteger(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isinteger]; returns a logical 1 if the argument is a integer type (int8, int16 ...) array and a logical 0 otherwise.
== Examples

``````matlab
A = 3;
res = isinteger(A)
``````

``````matlab
B = uint8(3);
res = isinteger(B)
``````

``````matlab
A = single([3, i]);
res = isinteger(A)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<types:isint8>)[isint8];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
