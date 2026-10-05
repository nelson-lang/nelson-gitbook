#import "../nelson_help.typ": *

= factorial <elementary_functions:2_elementary_math.factorial>

Factorial function

== Syntax

- #raw("R = factorial(M)");

== Input argument

/ M: a integer, real single or real double matrix.

== Output argument

/ R: result of factorial function.

== Description

#strong[factorial]; computes the factorial function: the product of all integers values: 1 \* 2 \* ... \* M


== Example

``````matlab
R = factorial([1:10])
R = factorial(int8(4))
``````


== See also

#nlink(<special_functions:gamma>)[gamma];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
