#import "../nelson_help.typ": *

= swapbytes <elementary_functions:5_base_conversions.swapbytes>

Swap byte ordering.

== Syntax

- #raw("R = swapbytes(M)");

== Input argument

/ M: a variable: integer, single or double real full matrix.

== Output argument

/ R: result of swapbytes: reversed byte order of M.

== Description

#strong[swapbytes]; Swap byte ordering.

 endian (little - big) converter


== Example

``````matlab
X = uint16([65535 128; 1 0])
Y = swapbytes(X)
``````


== See also

#nlink(<elementary_functions:5_base_conversions.num2bin>)[num2bin];, #nlink(<elementary_functions:5_base_conversions.bin2num>)[bin2num];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
