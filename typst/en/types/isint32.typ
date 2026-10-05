#import "nelson_help.typ": *

= isint32 <types:isint32>

Return true if variable var is a signed 32-bit integer type array.

== Syntax

- #raw("res = isint32(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isint32]; returns a logical #strong[1]; if the argument is a#strong[signed 32-bit]; integer array and a logical #strong[0]; otherwise.

 #strong[signed 32-bit]; integer array and a logical#strong[0]; otherwise.


== Examples

``````matlab
A = 3;
res = isint32(A)
``````

``````matlab
B = int32(3);
res = isint32(B)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<integer:int32>)[int32];, #nlink(<types:isinteger>)[isinteger];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
