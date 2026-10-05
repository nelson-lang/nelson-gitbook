#import "../nelson_help.typ": *

= tripuls <signal_processing:1_signal_generation_preprocessing.tripuls>

Sampled triangular pulse.

== Syntax

- #raw("Y = tripuls(T)");
- #raw("Y = tripuls(T, width)");
- #raw("Y = tripuls(T, width, skew)");

== Input argument

/ T: sample locations.
/ width: pulse width.
/ skew: peak position parameter.

== Output argument

/ Y: pulse samples.

== Description

#strong[tripuls]; returns a triangular pulse with optional skew.


== Example

``````matlab

y = tripuls([-0.5 0 0.5], 1);

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.rectpuls>)[rectpuls];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
