#import "../nelson_help.typ": *

= dec2bin <elementary_functions:5_base_conversions.dec2bin>

Convert decimal number to base 2.

== Syntax

- #raw("R = dec2bin(D)");
- #raw("R = dec2bin(D, N)");

== Input argument

/ D: a non negative integer smaller than the value returned by flintmax.
/ N: an integer value. number of digits.

== Output argument

/ R: result of dec2bin: char array.

== Description

#strong[dec2bin]; converts decimal number to base 2.


== Example

``````matlab
Y = dec2bin(2)
``````


== See also

#nlink(<elementary_functions:5_base_conversions.base2dec>)[dec2base];, #nlink(<elementary_functions:5_base_conversions.bin2dec>)[bin2dec];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
