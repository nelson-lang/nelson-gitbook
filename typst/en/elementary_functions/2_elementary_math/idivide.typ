#import "../nelson_help.typ": *

= idivide <elementary_functions:2_elementary_math.idivide>

Integer division with rounding option.

== Syntax

- #raw("C = idivide(A, B)");
- #raw("C = idivide(A, B, opt)");

== Input argument

/ A, B: integer arrays (at least one must be of an integer class).
/ opt: rounding rule: 'fix' (default), 'round', 'floor' or 'ceil'.

== Output argument

/ C: integer division result.

== Description

#strong[idivide(A, B)]; divides #strong[A]; by #strong[B]; and rounds the result toward zero (#strong['fix'];), keeping the integer class of the inputs.

 Use #strong[opt]; to select another rounding rule: #strong['round'];, #strong['floor']; or #strong['ceil'];.


== Example

``````matlab
idivide(int32(7), int32(2))
idivide(int32(7), int32(2), 'ceil')
``````


== See also

#nlink(<elementary_functions:2_elementary_math.mod>)[mod];, #nlink(<elementary_functions:2_elementary_math.rem>)[rem];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
