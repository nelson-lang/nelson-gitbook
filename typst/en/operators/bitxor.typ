#import "nelson_help.typ": *

= bitxor <operators:bitxor>

Bit-wise XOR

== Syntax

- #raw("C = bitxor(A, B)");
- #raw("C = bitxor(A, B, assumedtype)");

== Input argument

/ A: a variable: double, logical, integer
/ B: a variable: double, logical, integer
/ assumedtype: 'int64', 'int32', 'int16', 'int8', 'uint64', 'uint32', 'uint16' or 'uint8'.

== Output argument

/ C: Bit-wise XOR result

== Description

#strong[C \= bitxor(A, B)]; returns the bit-wise XOR of #strong[A]; and#strong[B];.


== Example

``````matlab
A = uint16([0 1; 0 1]);
B = uint16([0 0; 1 1]);
R = bitxor(A, B)

``````


== See also

#nlink(<operators:bitand>)[bitand];, #nlink(<operators:bitor>)[bitor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
