#import "../nelson_help.typ": *

= isstable <signal_processing:4_digital_filters.isstable>

Determine whether a digital filter is stable.

== Syntax

- #raw("tf = isstable(B, A)");
- #raw("tf = isstable(SOS)");

== Input argument

/ B, A: transfer function coefficients.
/ SOS: second-order-section matrix.

== Output argument

/ tf: true if all poles are inside the unit circle.

== Description

#strong[isstable]; checks the pole radii of a digital filter.


== Example

``````matlab

tf = isstable([1], [1 -0.5]);

``````


== See also

#nlink(<signal_processing:4_digital_filters.tf2zp>)[tf2zp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
