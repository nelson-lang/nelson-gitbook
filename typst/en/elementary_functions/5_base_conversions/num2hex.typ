#import "../nelson_help.typ": *

= num2hex <elementary_functions:5_base_conversions.num2hex>

Convert a number to its IEEE hexadecimal representation.

== Syntax

- #raw("s = num2hex(X)");

== Input argument

/ X: a single or double numeric array.

== Output argument

/ s: a character array of the hexadecimal digits (16 for double, 8 for single).

== Description

#strong[num2hex]; Convert a number to its IEEE hexadecimal representation.


== Example

``````matlab
s = num2hex(1)
``````


== See also

#nlink(<elementary_functions:5_base_conversions.hex2num>)[hex2num];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.14.0], [initial version],
)

// Author: Allan CORNET
