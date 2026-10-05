#import "nelson_help.typ": *

= uint32 <integer:uint32>

Converts to 32-bit unsigned integer.

== Syntax

- #raw("Y = uint32(X)");

== Input argument

/ X: a matrix of double, single or integers.

== Output argument

/ Y: a matrix of 32-bit unsigned integer.

== Description

#strong[uint32]; converts value to 32-bit unsigned integer type.

 The value is rounded to the nearest uint32 value on conversion. A value that is above or below the range for an uint32 class is mapped to one of the endpoints of the range \[0, 4294967295\].


== Example

``````matlab
A = [1 -2147483649 -120 127 2147483647 2147483648]
B = uint32(A)
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
