#import "../nelson_help.typ": *

= sosfilt <signal_processing:4_digital_filters.sosfilt>

Filter data with second-order sections.

== Syntax

- #raw("Y = sosfilt(SOS, X)");
- #raw("Y = sosfilt(SOS, X, DIM)");

== Input argument

/ SOS: second-order-section matrix.
/ X: input data.
/ DIM: dimension to operate along.

== Output argument

/ Y: filtered data.

== Description

#strong[sosfilt]; applies each row of SOS as one filter section.


== Example

``````matlab

y = sosfilt([1 2 1 1 -0.5 0], [1 0 0 0]);

``````


== See also

#nlink(<signal_processing:4_digital_filters.sos2tf>)[sos2tf];, #nlink(<elementary_functions:7_indexing_dimensions.filter>)[filter];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
