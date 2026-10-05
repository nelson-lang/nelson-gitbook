#import "../nelson_help.typ": *

= tf2sos <signal_processing:4_digital_filters.tf2sos>

Convert transfer function coefficients to second-order sections.

== Syntax

- #raw("SOS = tf2sos(B, A)");

== Input argument

/ B: numerator coefficients.
/ A: denominator coefficients.

== Output argument

/ SOS: matrix of second-order sections.

== Description

#strong[tf2sos]; converts transfer function coefficients to a matrix whose rows contain numerator and denominator section coefficients.


== Example

``````matlab

sos = tf2sos([1 2 1], [1 -0.5]);

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
