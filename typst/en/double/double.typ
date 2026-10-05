#import "nelson_help.typ": *

= double <double:double>

Converts a variable to double precision type.

== Syntax

- #raw("D = double(V)");

== Input argument

/ V: a variable.

== Output argument

/ D: a double.

== Description

#strong[double(V)]; converts to the double-precision type.


== Examples

``````matlab
double('Nelson')
``````

``````matlab
A = single(pi)
B = double(A)
B - A
``````

``````matlab
A = ["3.134", "NaN"; "Inf", "-5"];
B = double(A)
``````


== See also

#nlink(<string:1_create_convert_text.char>)[char];, #nlink(<single:single>)[single];, #nlink(<interpreter:numeric_types>)[numeric types];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
