#import "../nelson_help.typ": *

= pow2 <elementary_functions:2_elementary_math.pow2>

Base 2 exponentiation and scaling of floating-point numbers.

== Syntax

- #raw("Y = pow2(E)");
- #raw("Y = pow2(X, E)");

== Input argument

/ E: Exponent values
/ X: Significand values

== Output argument

/ Y: result of pow2.

== Description

#strong[Y \= pow2(E)]; computes 2 to the power of #strong[E];.

 #strong[Y \= pow2(X, E)]; computes X times 2 to the power of #strong[E];.


== Example

``````matlab
R = pow2([1, 2, 3; 4, 5, 6], [6, 5, 4; 3, 2, 1])
``````


== See also

#nlink(<elementary_functions:2_elementary_math.log2>)[log2];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
