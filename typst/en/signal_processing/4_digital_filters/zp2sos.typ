#import "../nelson_help.typ": *

= zp2sos <signal_processing:4_digital_filters.zp2sos>

Convert zero-pole-gain form to second-order sections.

== Syntax

- #raw("SOS = zp2sos(Z, P, K)");

== Input argument

/ Z: zeros.
/ P: poles.
/ K: gain.

== Output argument

/ SOS: matrix of second-order sections.

== Description

#strong[zp2sos]; groups zeros and poles into second-order sections and applies the gain to the first section.


== Example

``````matlab

sos = zp2sos([-1; -1], 0.5, 1);

``````


== See also

#nlink(<signal_processing:4_digital_filters.sos2zp>)[sos2zp];, #nlink(<signal_processing:4_digital_filters.zp2tf>)[zp2tf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
