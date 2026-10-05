#import "nelson_help.typ": *

= ifft <fftw:ifft>

Inverse Fast Fourier transform.

== Syntax

- #raw("Y = ifft(X)");
- #raw("Y = ifft(X, n)");
- #raw("Y = ifft(X, n, dim)");

== Input argument

/ X: a vector, matrix or N-D array (double, single, integer, logical).
/ n: transform length: a non negative integer scalar or \[\] (default).
/ dim: dimension: a positive integer scalar.

== Output argument

/ Y: a vector, matrix, N-D array: frequency domain representation.

== Description

#strong[ifft(X)]; computes the inverse discrete Fourier transform of X using a Fast Fourier Transform (FFT) algorithm based on FFTW library.


== Example

``````matlab
A = [1:10]
Y = fft(A)
R = ifft(Y)
``````


== See also

#nlink(<fftw:fft>)[fft];, #nlink(<fftw:fftw>)[fftw];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
