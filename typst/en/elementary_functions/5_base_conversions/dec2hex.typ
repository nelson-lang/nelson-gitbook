#import "../nelson_help.typ": *

= dec2hex <elementary_functions:5_base_conversions.dec2hex>

Convert decimal number to base 16.

== Syntax

- #raw("R = dec2hex(D)");
- #raw("R = dec2hex(D, N)");

== Input argument

/ D: a non negative integer smaller than the value returned by flintmax, or a negative value of a signed integer class (int8, int16, int32, int64).
/ N: an integer value. number of digits.

== Output argument

/ R: result of dec2hex: char array.

== Description

#strong[dec2hex]; converts decimal number to base 16.

 A negative value of a signed integer class is converted using the two's complement representation over the native bit width of the type (8, 16, 32 or 64 bits), so #strong[dec2hex(int8(-1))]; returns #strong['FF'];.


== Examples

``````matlab
Y = dec2hex(12)
``````

``````matlab
Y = dec2hex(int8(-92))
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
