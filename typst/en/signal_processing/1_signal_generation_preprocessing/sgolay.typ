#import "../nelson_help.typ": *

= sgolay <signal_processing:1_signal_generation_preprocessing.sgolay>

Savitzky-Golay filter coefficients.

== Syntax

- #raw("[B, G] = sgolay(K, F)");
- #raw("[B, G] = sgolay(K, F, W)");

== Input argument

/ K: polynomial order.
/ F: frame length.
/ W: positive weighting vector.

== Output argument

/ B: smoothing coefficient matrix.
/ G: least-squares coefficient matrix.

== Description

#strong[sgolay]; computes local polynomial least-squares filter coefficients.


== Example

``````matlab

[b, g] = sgolay(2, 5);

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.sgolayfilt>)[sgolayfilt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
