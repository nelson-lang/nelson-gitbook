#import "../nelson_help.typ": *

= rectpuls <signal_processing:1_signal_generation_preprocessing.rectpuls>

Sampled rectangular pulse.

== Syntax

- #raw("Y = rectpuls(T)");
- #raw("Y = rectpuls(T, width)");

== Input argument

/ T: sample locations.
/ width: pulse width.

== Output argument

/ Y: pulse samples.

== Description

#strong[rectpuls]; returns one inside the pulse interval and zero outside it.


== Example

``````matlab

y = rectpuls([-0.5 0 0.5], 1);

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.tripuls>)[tripuls];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
