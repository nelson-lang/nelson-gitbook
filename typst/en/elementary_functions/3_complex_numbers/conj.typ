#import "../nelson_help.typ": *

= conj <elementary_functions:3_complex_numbers.conj>

Complex conjugate

== Syntax

- #raw("CZ = conj(M)");

== Input argument

/ M: a variable

== Output argument

/ CZ: result of conj: complex conjugate.

== Description

#strong[conj]; returns the complex conjugate.


== Example

``````matlab
x = [1+i,-i;i,2i];
r = conj(x)
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
