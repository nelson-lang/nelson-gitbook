#import "../nelson_help.typ": *

= upfirdn <signal_processing:1_signal_generation_preprocessing.upfirdn>

Upsample, FIR filter, and downsample.

== Syntax

- #raw("Y = upfirdn(X, H)");
- #raw("Y = upfirdn(X, H, P, Q)");
- #raw("Y = upfirdn(X, H, P, Q, dim)");

== Input argument

/ X: nonempty nonsparse input signal.
/ H: nonempty nonsparse FIR coefficients. A matrix applies one filter column per signal column.
/ P: upsampling factor.
/ Q: downsampling factor.
/ dim: dimension to process.

== Output argument

/ Y: multirate filtered output.

== Description

#strong[upfirdn]; is the basic polyphase-style multirate operation used by resampling functions.

When #strong[H]; is a matrix, each column of #strong[H]; filters the corresponding signal column.


== Examples

``````matlab

Y = upfirdn([1 2 3], [1 1], 2, 2);

``````

``````matlab

Y = upfirdn([1; 2], [1 2; 3 4]);

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.upsample>)[upsample];, #nlink(<signal_processing:1_signal_generation_preprocessing.downsample>)[downsample];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
