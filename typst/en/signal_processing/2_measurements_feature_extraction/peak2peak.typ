#import "../nelson_help.typ": *

= peak2peak <signal_processing:2_measurements_feature_extraction.peak2peak>

Difference between maximum and minimum values.

== Syntax

- #raw("Y = peak2peak(X)");
- #raw("Y = peak2peak(X, \"all\")");
- #raw("Y = peak2peak(X, DIM)");
- #raw("Y = peak2peak(X, VECDIM)");

== Input argument

/ X: input data.
/ DIM: dimension to operate along.
/ VECDIM: vector of dimensions to operate along.

== Output argument

/ Y: peak-to-peak value.

== Description

#strong[peak2peak]; computes max(X) - min(X).


== Example

``````matlab

y = peak2peak([1 4 -2]);

``````


== See also

#nlink(<signal_processing:2_measurements_feature_extraction.rms>)[rms];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
