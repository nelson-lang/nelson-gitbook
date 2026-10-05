#import "../nelson_help.typ": *

= sign <elementary_functions:2_elementary_math.sign>

Find the sign function of a number.

== Syntax

- #raw("R = sign(M)");

== Input argument

/ M: a variable

== Output argument

/ R: result of sign.

== Description

#strong[sign]; find the sign function of a number.

 -1 if the corresponding element of M is less than 0.

 0 if the corresponding element of M equals 0.

 1 if the corresponding element of M is greater than 0.

 If input argument is a complex number, #strong[sign]; computes#strong[M .\/ abs(M)];.


== Example

``````matlab
V = [-1 0 15 NaN Inf];
sign(V)
``````


== See also

#nlink(<elementary_functions:3_complex_numbers.conj>)[conj];, #nlink(<elementary_functions:2_elementary_math.abs>)[abs];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
