#import "../nelson_help.typ": *

= unwrap <elementary_functions:3_complex_numbers.unwrap>

Shift phase angles to remove jumps.

== Syntax

- #raw("q = unwrap(p)");
- #raw("q = unwrap(p, tol)");
- #raw("q = unwrap(p, tol, dim)");

== Input argument

/ p: a real vector or matrix of phase angles in radians.
/ tol: jump tolerance, pi by default. A jump larger than tol is corrected by adding a multiple of 2\*pi.
/ dim: dimension along which to operate; by default the first dimension whose size is not 1.

== Output argument

/ q: the phase angles with jumps of more than tol removed, with the same size and class as #strong[p];.

== Description

#strong[unwrap]; corrects the radian phase angles in #strong[p]; by adding multiples of 2\*pi whenever the jump between consecutive elements is larger than #strong[tol]; (pi by default).

 For a matrix, each column is unwrapped independently unless a dimension is given.


== Example

``````matlab
q = unwrap([0 3*pi/2 3*pi])

``````


== See also

#nlink(<elementary_functions:3_complex_numbers.angle>)[angle];, #nlink(<elementary_functions:2_elementary_math.mod>)[mod];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
