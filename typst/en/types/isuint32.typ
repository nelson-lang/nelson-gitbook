#import "nelson_help.typ": *

= isuint32 <types:isuint32>

Return true if variable var is an unsigned 32-bit integer type array.

== Syntax

- #raw("res = isuint32(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isuint32]; returns a logical #strong[1]; if the argument is an#strong[unsigned 32-bit]; integer array and a logical #strong[0]; otherwise.


== Examples

``````matlab
A = 3;
res = isuint32(A)
``````

``````matlab
B = uint32(3);
res = isuint32(B)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<integer:uint32>)[uint32];, #nlink(<types:isinteger>)[isinteger];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
