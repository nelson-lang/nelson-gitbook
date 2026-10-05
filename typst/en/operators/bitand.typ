#import "nelson_help.typ": *

= bitand <operators:bitand>

Bit-wise AND

== Syntax

- #raw("C = bitand(A, B)");
- #raw("C = bitand(A, B, assumedtype)");

== Input argument

/ A: a variable: double, logical, integer
/ B: a variable: double, logical, integer
/ assumedtype: 'int64', 'int32', 'int16', 'int8', 'uint64', 'uint32', 'uint16' or 'uint8'.

== Output argument

/ C: Bit-wise AND result

== Description

#strong[C \= bitand(A, B)]; returns the bit-wise AND of #strong[A]; and#strong[B];.


== Example

``````matlab
A = uint16([0 1; 0 1]);
B = uint16([0 0; 1 1]);
R = bitand(A, B)

``````


== See also

#nlink(<operators:bitor>)[bitor];, #nlink(<operators:bitxor>)[bitxor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
