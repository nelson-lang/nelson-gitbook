#import "../nelson_help.typ": *

= decimate <signal_processing:1_signal_generation_preprocessing.decimate>

Lowpass filter and downsample a vector.

== Syntax

- #raw("Y = decimate(X, Q)");
- #raw("Y = decimate(X, Q, N)");
- #raw("Y = decimate(X, Q, N, 'iir')");
- #raw("Y = decimate(X, Q, N, 'fir')");

== Input argument

/ X: nonempty input vector.
/ Q: integer decimation factor greater than one.
/ N: filter order. The default order is 8 for IIR mode and 30 for FIR mode.

== Output argument

/ Y: decimated vector.

== Description

#strong[decimate]; applies an anti-aliasing lowpass filter and keeps every Q-th sample. The default mode uses an IIR Chebyshev type I lowpass filter with zero-phase forward and reverse filtering. The #strong['fir']; mode uses a windowed FIR lowpass filter and compensates its delay before downsampling.


== Example

``````matlab

y = decimate(1:20, 2, 4, 'fir');

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.downsample>)[downsample];, #nlink(<signal_processing:1_signal_generation_preprocessing.resample>)[resample];, #nlink(<signal_processing:1_signal_generation_preprocessing.upfirdn>)[upfirdn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
