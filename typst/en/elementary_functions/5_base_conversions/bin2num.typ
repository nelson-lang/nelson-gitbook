#import "../nelson_help.typ": *

= bin2num <elementary_functions:5_base_conversions.bin2num>

Convert two's complement binary string to number.

== Syntax

- #raw("R = bin2num(M)");

== Input argument

/ M: a char array with.

== Output argument

/ R: result of num2bin: logical, single or double.

== Description

#strong[bin2num]; converts binary character array to a numeric array.

 Note:

 - #strong[num2bin]; always returns the binary representations in a column

 - #strong[bin2num]; and #strong[num2bin]; are inverses of one another.


== Used function(s)

C++ std::bitset

== Bibliography

http:\/\/www.oxfordmathcenter.com\/drupal7\/node\/43

== Example

``````matlab
X = [65535 128; 1 0]
Y = num2bin(X)
bin2num(Y)
``````


== See also

#nlink(<elementary_functions:5_base_conversions.num2bin>)[num2bin];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
