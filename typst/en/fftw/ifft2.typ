#import "nelson_help.typ": *

= ifft2 <fftw:ifft2>

2-D inverse fast Fourier transform.

== Syntax

- #raw("Y = ifft2(X)");
- #raw("Y = ifft2(X, m, n)");

== Input argument

/ X: Input array.
/ m: Number of transform rows.
/ n: Number of transform columns.

== Output argument

/ Y: Inverse transform result.

== Description

#strong[ifft2]; returns the two-dimensional inverse Fourier transform of #strong[X];.


== Example

``````matlab
X = magic(3); Y = ifft2(fft2(X))
``````


== See also

#nlink(<fftw:fft2>)[fft2];, #nlink(<fftw:ifftn>)[ifftn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
