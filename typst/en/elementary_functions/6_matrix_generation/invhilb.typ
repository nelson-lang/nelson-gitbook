#import "../nelson_help.typ": *

= invhilb <elementary_functions:6_matrix_generation.invhilb>

Inverse of Hilbert matrix

== Syntax

- #raw("h = hilb(n)");
- #raw("h = hilb(n, className)");

== Input argument

/ n: a scalar, nonnegative integer.
/ className: 'single' or 'double' (default).

== Output argument

/ h: Hilbert matrix.

== Description

#strong[hilb]; computes the Hilbert matrix.


== Bibliography

https:\/\/en.wikipedia.org\/wiki\/David\_Hilbert, and Thanks to https:\/\/nhigham.com\/2020\/06\/30\/what-is-the-hilbert-matrix\/

== Example

``````matlab
h = hilb(5)
``````


== See also

#nlink(<elementary_functions:6_matrix_generation.invhilb>)[invhilb];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
