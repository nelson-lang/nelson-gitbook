#import "../nelson_help.typ": *

= abs <elementary_functions:2_elementary_math.abs>

Absolute value

== Syntax

- #raw("R = abs(M)");

== Input argument

/ M: a variable

== Output argument

/ R: result of abs: absolute value.

== Description

#strong[abs]; computes the absolute value.

 If input argument is a complex number,#strong[abs]; computes the complex magnitude.


== Example

``````matlab
x = [1+i,-i;i,2i];
r = abs(x)
``````


== See also

#nlink(<elementary_functions:3_complex_numbers.conj>)[conj];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
