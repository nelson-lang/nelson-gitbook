#import "../nelson_help.typ": *

= real <elementary_functions:3_complex_numbers.real>

Real part of an complex number.

== Syntax

- #raw("R = real(M)");

== Input argument

/ M: a variable

== Output argument

/ R: real part of the elements of the complex array M.

== Description

#strong[R \= real(M)]; Return the real part of M.


== Example

``````matlab
cplx = 22+34*i;
r = real(cplx)
``````


== See also

#nlink(<elementary_functions:3_complex_numbers.imag>)[imag];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
