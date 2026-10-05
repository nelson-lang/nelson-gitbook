#import "../nelson_help.typ": *

= tf2zp <signal_processing:4_digital_filters.tf2zp>

Convert transfer function coefficients to zero-pole-gain form.

== Syntax

- #raw("[Z, P, K] = tf2zp(B, A)");

== Input argument

/ B: numerator coefficients, or one numerator per row.
/ A: denominator coefficients.

== Output argument

/ Z: zeros.
/ P: poles.
/ K: gain.

== Description

#strong[tf2zp]; converts polynomial filter coefficients to a zero-pole-gain representation.


== Example

``````matlab

[z, p, k] = tf2zp([1 2 1], [1 -0.5]);

``````


== See also

#nlink(<signal_processing:4_digital_filters.zp2tf>)[zp2tf];, #nlink(<signal_processing:4_digital_filters.tf2sos>)[tf2sos];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
