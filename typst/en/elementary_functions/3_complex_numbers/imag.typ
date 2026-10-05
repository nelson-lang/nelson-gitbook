#import "../nelson_help.typ": *

= imag <elementary_functions:3_complex_numbers.imag>

Imaginary part of an complex number.

== Syntax

- #raw("im = imag(M)");

== Input argument

/ M: a variable

== Output argument

/ R: imaginary part of the elements of the complex array M.

== Description

#strong[R \= imag(M)]; Return the imaginary part of M.


== Example

``````matlab
cplx = 22+34*i;
r = imag(cplx)
``````


== See also

#nlink(<elementary_functions:3_complex_numbers.real>)[real];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
