#import "../nelson_help.typ": *

= chirp <signal_processing:1_signal_generation_preprocessing.chirp>

Swept-frequency cosine signal.

== Syntax

- #raw("Y = chirp(T)");
- #raw("Y = chirp(T, F0, T1, F1)");
- #raw("Y = chirp(T, F0, T1, F1, method)");
- #raw("Y = chirp(T, F0, T1, F1, method, phi)");

== Input argument

/ T: time values.
/ F0: initial frequency.
/ T1: reference time.
/ F1: frequency at T1.
/ method: 'linear', 'quadratic', or 'logarithmic'.
/ phi: initial phase in degrees.

== Output argument

/ Y: generated signal.

== Description

#strong[chirp]; generates a cosine whose frequency changes over time.


== Example

``````matlab

y = chirp(0:0.01:1, 0, 1, 10);

``````


== See also

#nlink(<signal_processing:1_signal_generation_preprocessing.sawtooth>)[sawtooth];, #nlink(<signal_processing:1_signal_generation_preprocessing.square>)[square];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
