#import "../nelson_help.typ": *

= complex <elementary_functions:3_complex_numbers.complex>

Creates an complex number.

== Syntax

- #raw("cpx = complex(a)");
- #raw("cpx = complex(a, b)");

== Input argument

/ a: a variable: real part
/ b: a variable: imaginary part

== Output argument

/ cplx: result of a + b\*i

== Description

#strong[complex]; returns a complex value from real arguments.

 With only one input argument,#strong[complex]; returns a complex value a + 0\*i.


== Example

``````matlab
z = complex(3, 2)
z2 = complex(Inf, Inf)
z3 = Inf + Inf * i
``````


== See also

#nlink(<elementary_functions:3_complex_numbers.real>)[real];, #nlink(<elementary_functions:3_complex_numbers.imag>)[imag];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
