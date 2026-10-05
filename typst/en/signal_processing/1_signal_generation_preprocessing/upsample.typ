#import "../nelson_help.typ": *

= upsample <signal_processing:1_signal_generation_preprocessing.upsample>

Upsample a sequence by an integer factor.

== Syntax

- #raw("Y = upsample(X, n)");
- #raw("Y = upsample(X, n, phase)");
- #raw("Y = upsample(X, n, phase, dim)");

== Input argument

/ X: input array.
/ n: positive integer upsampling factor.
/ phase: optional insertion phase from 0 to n - 1.
/ dim: optional dimension to process.

== Output argument

/ Y: upsampled array with inserted zeros.

== Description

#strong[upsample]; inserts n - 1 zeros between samples along the selected dimension.


== Example

``````matlab

Y = upsample([1 2 3], 2)

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.downsample>)[downsample];, #nlink(<signal_processing:1_signal_generation_preprocessing.upfirdn>)[upfirdn];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
