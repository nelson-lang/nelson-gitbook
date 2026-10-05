#import "nelson_help.typ": *

= bitget <operators:bitget>

Get selected bits.

== Syntax

- #raw("C = bitget(A, bit)");
- #raw("C = bitget(A, bit, assumedtype)");

== Input argument

/ A: Integer array, or nonnegative integer-valued double array.
/ bit: Positive integer bit position.
/ assumedtype: Integer type name used for double input.

== Output argument

/ C: Array containing zero or one values.

== Description

#strong[C \= bitget(A, bit)]; returns the value of the selected bit in each element of #strong[A];.


== Example

``````matlab
R = bitget(uint8([1 2 3]), 1)
``````


== See also

#nlink(<operators:bitand>)[bitand];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
