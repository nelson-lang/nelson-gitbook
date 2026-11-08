#import "../nelson_help.typ": *

= str2num <string:1_create_convert_text.str2num>

Convert character array to numeric array.

== Syntax

- #raw("x = str2num(s)");
- #raw("[x, ok] = str2num(s)");

== Input argument

/ s: a character vector or string scalar holding a numeric expression.

== Output argument

/ x: the numeric result, or #strong[\[\]]; when the text cannot be evaluated to a number.
/ ok: a logical: #strong[true]; when the conversion succeeded.

== Description

#strong[x \= str2num(s)]; converts the character array #strong[s]; to a numeric array by evaluating it.

 Because #strong[str2num]; evaluates its input, prefer #strong[str2double]; for simple scalar conversions.


== Example

``````matlab
x = str2num('[1 2 3]')
[y, ok] = str2num('4 5; 6 7')
``````


== See also

#nlink(<string:1_create_convert_text.str2double>)[str2double];, #nlink(<string:1_create_convert_text.num2str>)[num2str];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
