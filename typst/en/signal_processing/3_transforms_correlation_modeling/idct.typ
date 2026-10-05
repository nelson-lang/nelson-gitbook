#import "../nelson_help.typ": *

= idct <signal_processing:3_transforms_correlation_modeling.idct>

Inverse discrete cosine transform.

== Syntax

- #raw("X = idct(Y)");
- #raw("X = idct(Y, N)");
- #raw("X = idct(Y, N, DIM)");

== Input argument

/ Y: discrete cosine transform coefficients.
/ N: transform length: Y is padded with zeros or truncated to length N.
/ DIM: dimension to operate along.

== Output argument

/ X: reconstructed signal (inverse of the orthonormal DCT-II).

== Description

#strong[idct]; computes the inverse of the orthonormal type-II discrete cosine transform along the first non-singleton dimension by default. For matrices, each column is transformed independently.


== Example

``````matlab

y = dct([1 2 3 4]);
x = idct(y);

``````


== See also

#nlink(<signal_processing:3_transforms_correlation_modeling.dct>)[dct];, #nlink(<fftw:ifft>)[ifft];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
