#import "../nelson_help.typ": *

= sos2zp <signal_processing:4_digital_filters.sos2zp>

Convert second-order sections to zero-pole-gain form.

== Syntax

- #raw("[Z, P, K] = sos2zp(SOS)");

== Input argument

/ SOS: second-order-section matrix.

== Output argument

/ Z: zeros.
/ P: poles.
/ K: gain.

== Description

#strong[sos2zp]; converts sections to transfer function coefficients and then to zero-pole-gain form.


== Example

``````matlab

[z, p, k] = sos2zp([1 2 1 1 -0.5 0]);

``````


== See also

#nlink(<signal_processing:4_digital_filters.sos2tf>)[sos2tf];, #nlink(<signal_processing:4_digital_filters.zp2sos>)[zp2sos];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
