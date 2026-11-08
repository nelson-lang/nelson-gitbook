#import "nelson_help.typ": *

= bitcmp <operators:bitcmp>

Bitwise complement.

== Syntax

- #raw("r = bitcmp(A)");
- #raw("r = bitcmp(A, assumedtype)");

== Input argument

/ A: an integer array, or a double with nonnegative integer values.
/ assumedtype: an integer class name used to interpret a double #strong[A];.

== Output argument

/ r: the bitwise complement of #strong[A];.

== Description

#strong[r \= bitcmp(A)]; returns the bitwise complement of #strong[A];, where the width is given by the integer class of #strong[A];.

 When #strong[A]; is a double, pass #strong[assumedtype]; (for example #strong['uint8'];) to set the bit width; the result stays double.


== Example

``````matlab
bitcmp(uint8(5))
``````


== See also

#nlink(<operators:bitand>)[bitand];, #nlink(<operators:bitor>)[bitor];, #nlink(<operators:bitxor>)[bitxor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
