#import "../nelson_help.typ": *

= sawtooth <signal_processing:1_signal_generation_preprocessing.sawtooth>

Sawtooth or triangle waveform.

== Syntax

- #raw("Y = sawtooth(T)");
- #raw("Y = sawtooth(T, width)");

== Input argument

/ T: time values in radians.
/ width: fraction of period spent rising.

== Output argument

/ Y: waveform values.

== Description

#strong[sawtooth]; generates a periodic ramp between -1 and 1.


== Example

``````matlab

y = sawtooth(0:0.1:2*pi);

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.square>)[square];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
