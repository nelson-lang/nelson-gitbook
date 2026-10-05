#import "../nelson_help.typ": *

= dct <signal_processing:3_transforms_correlation_modeling.dct>

Discrete cosine transform.

== Syntax

- #raw("Y = dct(X)");
- #raw("Y = dct(X, N)");
- #raw("Y = dct(X, N, DIM)");

== Input argument

/ X: input signal or matrix.
/ N: transform length: X is padded with zeros or truncated to length N.
/ DIM: dimension to operate along.

== Output argument

/ Y: discrete cosine transform coefficients (DCT-II, orthonormal).

== Description

#strong[dct]; computes the orthonormal type-II discrete cosine transform along the first non-singleton dimension by default. For matrices, each column is transformed independently.


== Example

``````matlab

y = dct([1 2 3 4]);
x = idct(y);

``````


== See also

#nlink(<signal_processing:3_transforms_correlation_modeling.idct>)[idct];, #nlink(<fftw:fft>)[fft];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
