#import "../nelson_help.typ": *

= hex2num <elementary_functions:5_base_conversions.hex2num>

Convert an IEEE hexadecimal representation to a number.

== Syntax

- #raw("X = hex2num(s)");

== Input argument

/ s: a character array of 16 hexadecimal digits (one number per row).

== Output argument

/ X: the double value(s) with that bit pattern.

== Description

#strong[hex2num]; Convert an IEEE hexadecimal representation to a number.


== Example

``````matlab
x = hex2num('3ff0000000000000')
``````


== See also

#nlink(<elementary_functions:5_base_conversions.num2hex>)[num2hex];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [initial version],
)

// Author: Allan CORNET
