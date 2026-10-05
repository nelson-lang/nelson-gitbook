#import "nelson_help.typ": *

= isint64 <types:isint64>

Return true if variable var is a signed 64-bit integer type array.

== Syntax

- #raw("res = isint64(var)");

== Input argument

/ var: a variable

== Output argument

/ res: a logical: true or false

== Description

#strong[isint64]; returns a logical #strong[1]; if the argument is a#strong[signed 64-bit]; integer array and a logical #strong[0]; otherwise.


== Examples

``````matlab
A = 3;
res = isint64(A)
``````

``````matlab
B = int64(3);
res = isint64(B)
``````


== See also

#nlink(<types:isa>)[isa];, #nlink(<integer:int64>)[int64];, #nlink(<types:isinteger>)[isinteger];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
