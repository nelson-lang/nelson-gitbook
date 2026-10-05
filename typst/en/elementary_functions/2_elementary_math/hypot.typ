#import "../nelson_help.typ": *

= hypot <elementary_functions:2_elementary_math.hypot>

Square root of sum of squares

== Syntax

- #raw("C = hypot(A, B)");

== Input argument

/ A: a variable: scalars, vectors, matrices, multidimensional arrays single or double
/ B: a variable: scalars, vectors, matrices, multidimensional arrays single or double

== Output argument

/ R: result of hypot: hypotenuse.

== Description

#strong[hypot]; computes the hypotenuse.

 If one or both inputs is NaN, then #strong[hypot]; returns#strong[NaN];.


== Example

``````matlab
R = hypot(1e308, 1e308)
R = hypot(1e309, 1e309)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.abs>)[abs];, #nlink(<elementary_functions:2_elementary_math.sqrt>)[sqrt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
