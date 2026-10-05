#import "../nelson_help.typ": *

= square <signal_processing:1_signal_generation_preprocessing.square>

Square waveform.

== Syntax

- #raw("Y = square(T)");
- #raw("Y = square(T, duty)");

== Input argument

/ T: time values in radians.
/ duty: duty cycle percentage.

== Output argument

/ Y: waveform values.

== Description

#strong[square]; generates a two-level periodic waveform.


== Example

``````matlab

y = square(0:0.1:2*pi, 25);

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.sawtooth>)[sawtooth];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
