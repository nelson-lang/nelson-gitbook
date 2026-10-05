#import "../nelson_help.typ": *

= var <statistics:1_descriptive_statistics_visualization.var>

Variance

== Syntax

- #raw("V = var(A)");
- #raw("V = var(A, w)");
- #raw("V = var(A, w, dim)");
- #raw("V = var(A, w, vecdim)");
- #raw("V = var(A, w, 'all')");
- #raw("V = var(..., nanflag)");
- #raw("[V, M] = var(...)");

== Input argument

/ A: a vector, matrix or multidimensional array: single, double, int8, int16, int32, int64, uint8, uint16, uint32 or uint64.
/ w: weight: 0 (normalization by N-1, default), 1 (normalization by N) or a vector of nonnegative weights whose length is the size of the operating dimension.
/ dim: a positive integer scalar: dimension to operate along.
/ vecdim: a vector of positive integers: dimensions to operate along.
/ nanflag: 'includenan' (default) or 'omitnan'.

== Output argument

/ V: Variance of A.
/ M: Mean of A used to compute the variance, same size as V. It is the weighted mean when w is a weight vector.

== Description

#strong[V \= var(A)]; returns the variance of the elements of A along the first array dimension whose size does not equal 1.

 #strong[\[V, M\] \= var(...)]; also returns the mean #strong[M]; computed with the same weights, dimensions and nanflag as the variance.

 For integer input data (int8, int16, int32, int64, uint8, uint16, uint32, uint64), the variance is computed in double precision and #strong[V]; and #strong[M]; are double.


== Used function(s)

std mean cov

== Examples

``````matlab
M = [4 -7 3; 1 4 -2; 10 7 9];
V = var(M)
``````

Integer input data

``````matlab
V = var(int8([-128 127 0]))
``````

Weighted variance and weighted mean

``````matlab
A = [4 -7 3; 1 4 -2; 10 7 9];
[V, M] = var(A, [1 2 3])
``````


== See also

#nlink(<statistics:1_descriptive_statistics_visualization.cov>)[cov];, #nlink(<statistics:1_descriptive_statistics_visualization.mean>)[mean];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [Integer input data supported.],
  [2.0.0], [Second output M: mean used to compute the variance.],
)

// Author: Allan CORNET
