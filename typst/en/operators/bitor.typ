#import "nelson_help.typ": *

= bitor <operators:bitor>

Bit-wise OR

== Syntax

- #raw("C = bitor(A, B)");
- #raw("C = bitor(A, B, assumedtype)");

== Input argument

/ A: a variable: double, logical, integer
/ B: a variable: double, logical, integer
/ assumedtype: 'int64', 'int32', 'int16', 'int8', 'uint64', 'uint32', 'uint16' or 'uint8'.

== Output argument

/ C: Bit-wise OR result

== Description

#strong[C \= bitor(A, B)]; returns the bit-wise OR of #strong[A]; and#strong[B];.


== Example

``````matlab
A = uint16([0 1; 0 1]);
B = uint16([0 0; 1 1]);
R = bitor(A, B)

``````


== See also

#nlink(<operators:bitand>)[bitand];, #nlink(<operators:bitxor>)[bitxor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
