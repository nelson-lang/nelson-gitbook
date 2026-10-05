#import "nelson_help.typ": *

= int8 <integer:int8>

Converts to 8-bit signed integer.

== Syntax

- #raw("Y = int8(X)");

== Input argument

/ X: a matrix of double, single or integers.

== Output argument

/ Y: a matrix of 8-bit integer.

== Description

#strong[int8]; converts value to 8-bit integer type.

 The value is rounded to the nearest int8 value on conversion. A value that is above or below the range for an int8 class is mapped to one of the endpoints of the range \[-128, 127\].


== Example

``````matlab
A = [1 -255 -120 127 128 215]
B = int8(A)
``````


== See also

#nlink(<integer:intmax>)[intmax];, #nlink(<integer:intmax>)[intmin];, #nlink(<interpreter:numeric_types>)[numeric types];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
