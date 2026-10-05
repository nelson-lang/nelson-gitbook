#import "../nelson_help.typ": *

= exp <elementary_functions:2_elementary_math.exp>

Exponential

== Syntax

- #raw("R = exp(M)");

== Input argument

/ M: a variable

== Output argument

/ R: result of exp: exponential.

== Description

#strong[exp]; computes the exponential value.

 For real numbers:

 #latex("e^x"); For complex numbers #strong[z \= x + iy];:

 #latex("e^z = e^x(\\cos y + i\\sin y)");
== Example

``````matlab
x = [1+i,-i;i,2i];
r = exp(x)
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
