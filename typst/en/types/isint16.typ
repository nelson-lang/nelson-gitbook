#import "nelson_help.typ": *

= isint16 <types:isint16>

Return true if variable var is a signed 16-bit integer type array.

== Syntax

- #raw("res = isint16(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isint16]; returns a logical #strong[1]; if the argument is a#strong[signed 16-bit]; integer array and a logical #strong[0]; otherwise.


== Examples

``````matlab
A = 3;
res = isint16(A)
``````

``````matlab
B = int16(3);
res = isint16(B)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<integer:int16>)[int16];, #nlink(<types:isinteger>)[isinteger];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
