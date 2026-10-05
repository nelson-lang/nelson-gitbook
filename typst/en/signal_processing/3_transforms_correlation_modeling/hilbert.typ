#import "../nelson_help.typ": *

= hilbert <signal_processing:3_transforms_correlation_modeling.hilbert>

Analytic signal using the Hilbert transform.

== Syntax

- #raw("Y = hilbert(X)");
- #raw("Y = hilbert(X, N)");

== Input argument

/ X: input signal or matrix.
/ N: FFT length along the first non-singleton dimension.

== Output argument

/ Y: analytic signal with negative-frequency bins removed.

== Description

#strong[hilbert]; constructs the analytic signal along the first non-singleton dimension. For matrices, each column is transformed independently.


== Example

``````matlab

y = hilbert([1 0 0 0]);

``````


== See also

#nlink(<fftw:fft>)[fft];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
