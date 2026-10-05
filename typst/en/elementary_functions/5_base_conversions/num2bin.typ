#import "../nelson_help.typ": *

= num2bin <elementary_functions:5_base_conversions.num2bin>

Convert number to binary representation.

== Syntax

- #raw("R = num2bin(M)");

== Input argument

/ M: a variable: logical, integer, single or double real full matrix.

== Output argument

/ R: result of num2bin: char array.

== Description

#strong[num2bin]; returns a char array giving the literal bit representation of a number.


== Used function(s)

C++ std::bitset

== Bibliography

http:\/\/www.oxfordmathcenter.com\/drupal7\/node\/43

== Example

``````matlab
X = [65535 128; 1 0]
Y = num2bin(X)
``````


== See also

#nlink(<elementary_functions:5_base_conversions.bin2num>)[bin2num];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
