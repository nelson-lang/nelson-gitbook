#import "nelson_help.typ": *

= isuint16 <types:isuint16>

Return true if variable var is an unsigned 16-bit integer type array.

== Syntax

- #raw("res = isuint16(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isuint16]; returns a logical #strong[1]; if the argument is an#strong[unsigned 16-bit]; integer array and a logical #strong[0]; otherwise.


== Examples

``````matlab
A = 3;
res = isuint16(A)
``````

``````matlab
B = uint16(3);
res = isuint16(B)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<integer:uint16>)[uint16];, #nlink(<types:isinteger>)[isinteger];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
