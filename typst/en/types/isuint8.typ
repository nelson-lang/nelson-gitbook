#import "nelson_help.typ": *

= isuint8 <types:isuint8>

Return true if variable var is an unsigned 8-bit integer type array.

== Syntax

- #raw("res = isuint8(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isuint8]; returns a logical #strong[1]; if the argument is an#strong[unsigned 8-bit]; integer array and a logical #strong[0]; otherwise.


== Examples

``````matlab
A = 3;
res = isuint8(A)
``````

``````matlab
B = uint8(3);
res = isuint8(B)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<integer:uint8>)[uint8];, #nlink(<types:isinteger>)[isinteger];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
