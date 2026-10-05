#import "../nelson_help.typ": *

= dec2hex <elementary_functions:5_base_conversions.dec2hex>

Convert decimal number to base 16.

== Syntax

- #raw("R = dec2hex(D)");
- #raw("R = dec2hex(D, N)");

== Input argument

/ D: a non negative integer smaller than the value returned by flintmax.
/ N: an integer value. number of digits.

== Output argument

/ R: result of dec2hex: char array.

== Description

#strong[dec2hex]; converts decimal number to base 16.


== Example

``````matlab
Y = dec2hex(12)
``````


== See also

#nlink(<elementary_functions:5_base_conversions.base2dec>)[dec2base];, #nlink(<elementary_functions:5_base_conversions.hex2dec>)[hex2dec];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
