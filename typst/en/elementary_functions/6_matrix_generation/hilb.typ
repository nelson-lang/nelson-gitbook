#import "../nelson_help.typ": *

= hilb <elementary_functions:6_matrix_generation.hilb>

Hilbert matrix

== Syntax

- #raw("h = invhilb(n)");
- #raw("h = invhilb(n, className)");

== Input argument

/ n: a scalar, nonnegative integer.
/ className: 'single' or 'double' (default).

== Output argument

/ h: Hilbert matrix.

== Description

#strong[hilb]; computes the exact inverse of the exact Hilbert matrix.


== Bibliography

https:\/\/en.wikipedia.org\/wiki\/David\_Hilbert, and Thanks to https:\/\/nhigham.com\/2020\/06\/30\/what-is-the-hilbert-matrix\/

== Example

``````matlab
h = invhilb(5)
``````


== See also

#nlink(<elementary_functions:6_matrix_generation.hilb>)[hilb];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
