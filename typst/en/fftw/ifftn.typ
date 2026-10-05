#import "nelson_help.typ": *

= ifftn <fftw:ifftn>

Inverse multidimensional fast Fourier transform.

== Syntax

- #raw("Y = ifftn(X)");
- #raw("Y = ifftn(X, sz)");

== Input argument

/ X: a vector, matrix or N-D array (double, single, integer, logical).
/ sz: a multidimensional array.

== Output argument

/ Y: a vector, matrix, N-D array: frequency domain representation.

== Description

#strong[Y \= ifftn(X, sz)]; pads #strong[X]; with zeros, or truncates#strong[X];, to create a multidimensional array of size #strong[sz]; before performing the transform.

 The size of the result #strong[Y]; is #strong[sz];.

 #strong[Y \= ifftn(X)]; performs the N-dimensional inverse fast Fourier transform.

 The result #strong[Y]; is the same size as #strong[X];.


== Example

``````matlab
f = zeros(5, 5);
f(1:5,4:5) = 1;
Y = ifftn(fftn(f));
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
