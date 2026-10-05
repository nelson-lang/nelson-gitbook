#import "../nelson_help.typ": *

= num2str <string:1_create_convert_text.num2str>

Converts numbers to character array.

== Syntax

- #raw("S = num2str(A)");
- #raw("S = num2str(A, precision)");
- #raw("S = num2str(A, formatSpec)");

== Input argument

/ A: a numerical matrix or logical.
/ precision: an positive integer value: Maximum number of significant digits.
/ formatSpec: a character array: Format of output fields.

== Output argument

/ S: a character array: text representation of input array.

== Description

#strong[num2str]; converts numbers to character array.

 #strong[num2str]; trims any leading spaces from a character array. For better control over the results, use #strong[sprintf];.


== Example

``````matlab
R = num2str(pi, 4)
R = num2str(magic(3))
``````


== See also

#nlink(<string:1_create_convert_text.int2str>)[int2str];, #nlink(<string:1_create_convert_text.sprintf>)[sprintf];, #nlink(<string:1_create_convert_text.mat2str>)[mat2str];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
