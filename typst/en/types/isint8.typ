#import "nelson_help.typ": *

= isint8 <types:isint8>

Return true if variable var is a signed 8-bit integer type array.

== Syntax

- #raw("res = isint8(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isint8]; returns a logical #strong[1]; if the argument is a#strong[signed 8-bit]; integer array and a logical #strong[0]; otherwise.


== Examples

``````matlab
A = 3;
res = isint8(A)
``````

``````matlab
B = int8(3);
res = isint8(B)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<integer:int8>)[int8];, #nlink(<types:isinteger>)[isinteger];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
