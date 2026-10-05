#import "nelson_help.typ": *

= ifftshift <fftw:ifftshift>

inverse of fftshift

== Syntax

- #raw("Y = ifftshift(X)");
- #raw("Y = ifftshift(X, DIM)");

== Input argument

/ X: a vector, matrix or N-D array (double, single, integer).
/ DIM: axes over which to shift.

== Output argument

/ Y: shifted array.

== Description

#strong[fftshift(X)]; computes the inverse #strong[fftshift];.


== Example

``````matlab
M = [ 0.,  10.,  20.; 30.,  40., -40.; -30., -20., -10.]
ifftshift(M)
ifftshift(M, 1)
``````


== See also

#nlink(<fftw:ifft>)[ifft];, #nlink(<fftw:fftshift>)[fftshift];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
