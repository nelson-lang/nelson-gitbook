#import "../nelson_help.typ": *

= mod <elementary_functions:2_elementary_math.mod>

Modulus after division.

== Syntax

- #raw("C = mod(A, B)");

== Input argument

/ A: a variable: dividend
/ B: a variable: divisor

== Output argument

/ C: result of mod(A, B)

== Description

#strong[C \= mod(A, B)]; computes the modulo of A and B, i.e : A - B .\* floor (A .\/ B).

 This function manages also negative values.


== Example

``````matlab
 mod (-1, 3)
``````


== See also

#nlink(<elementary_functions:2_elementary_math.rem>)[rem];, #nlink(<elementary_functions:2_elementary_math.floor>)[floor];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
