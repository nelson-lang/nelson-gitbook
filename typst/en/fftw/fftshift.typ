#import "nelson_help.typ": *

= fftshift <fftw:fftshift>

Shift the zero-frequency component to the center of the spectrum.

== Syntax

- #raw("Y = fftshift(X)");
- #raw("Y = fftshift(X, DIM)");

== Input argument

/ X: a vector, matrix or N-D array (double, single, integer).
/ DIM: axes over which to shift.

== Output argument

/ Y: shifted array.

== Description

#strong[fftshift(X)]; shift the zero-frequency component to the center of the spectrum.


== Example

``````matlab
M = [ 0.,  10.,  20.; 30.,  40., -40.; -30., -20., -10.]
fftshift(M)
fftshift(M, 1)
``````


== See also

#nlink(<fftw:ifft>)[fft];, #nlink(<fftw:ifftshift>)[ifftshift];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
