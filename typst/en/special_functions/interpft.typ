#import "nelson_help.typ": *

= interpft <special_functions:interpft>

1-D interpolation using the FFT method.

== Syntax

- #raw("y = interpft(x, ny)");
- #raw("y = interpft(x, ny, dim)");

== Input argument

/ x: a vector or matrix of samples of a periodic function.
/ ny: the number of output samples (at least the number of input samples).
/ dim: the dimension along which to interpolate.

== Output argument

/ y: the resampled data.

== Description

#strong[y \= interpft(x, ny)]; resamples #strong[x]; to #strong[ny]; equally spaced points using the Fourier transform, assuming #strong[x]; is periodic.


== Example

``````matlab
y = interpft([1 2 3 4], 8)
``````


== See also

#nlink(<special_functions:interp1>)[interp1];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
