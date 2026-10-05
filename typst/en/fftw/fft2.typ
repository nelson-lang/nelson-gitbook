#import "nelson_help.typ": *

= fft2 <fftw:fft2>

2-D fast Fourier transform.

== Syntax

- #raw("Y = fft2(X)");
- #raw("Y = fft2(X, m, n)");

== Input argument

/ X: Input array.
/ m: Number of transform rows.
/ n: Number of transform columns.

== Output argument

/ Y: a vector, matrix, N-D array: frequency domain representation.

== Description

#strong[Y \= fft2(X)]; returns the two-dimensional Fourier transform of #strong[X]; using a Fast Fourier Transform (FFT) algorithm.

 Optional arguments #strong[m]; and#strong[n]; may be used specify the number of rows and columns of #strong[X]; to use.

 If either of these is larger than the size of #strong[X];,#strong[X]; is resized and padded with zeros.

 If #strong[X]; is a multi-dimensional matrix, each two-dimensional sub-matrix of #strong[X]; is treated separately.


== Example

``````matlab
R = fft2(eye(5, 5), 2, 3)
``````


== See also

#nlink(<fftw:fftn>)[fftn];, #nlink(<fftw:fft>)[fft];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
