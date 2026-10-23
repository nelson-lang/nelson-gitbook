#import "../nelson_help.typ": *

= margin <control_system:3_linear_analysis.margin>

Gain and phase margins of a SISO LTI system.

== Syntax

- #raw("margin(sys)");
- #raw("[Gm, Pm, Wcg, Wcp] = margin(sys)");
- #raw("[Gm, Pm, Wcg, Wcp] = margin(mag, phase, w)");

== Input argument

/ sys: a SISO LTI model.
/ mag: magnitude of the frequency response (absolute values).
/ phase: phase of the frequency response, in degrees.
/ w: frequencies, in rad\/s.

== Output argument

/ Gm: gain margin (absolute value), equal to 1\/|G(j\*Wcg)|.
/ Pm: phase margin, in degrees.
/ Wcg: phase crossover frequency (rad\/s), where the phase equals -180 degrees.
/ Wcp: gain crossover frequency (rad\/s), where the magnitude equals 1 (0 dB).

== Description

#strong[margin]; computes the gain margin, the phase margin and the associated crossover frequencies of a SISO open-loop model #strong[sys.];

 The gain margin #strong[Gm]; is returned as an absolute value (not in decibels) and is the factor by which the open-loop gain can be increased before the closed loop becomes unstable.

 The phase margin #strong[Pm]; is expressed in degrees and is the additional phase lag required to reach instability.

 When a margin is infinite, #strong[Gm]; or #strong[Pm]; is returned as #strong[Inf.]; The associated phase crossover frequency #strong[Wcg]; is #strong[Inf]; when the phase reaches -180 degrees only at infinite frequency (continuous system of relative degree two or more), and #strong[NaN]; when there is no phase crossover at all.

 The alternate form #strong[margin(mag, phase, w)]; computes the margins directly from frequency-response data obtained elsewhere.

 Called without output arguments, #strong[margin(sys)]; draws the Bode diagram of the system.


== Example

``````matlab
H = tf(1, [1 3 2 0]);
[Gm, Pm, Wcg, Wcp] = margin(H)
``````


== See also

#nlink(<control_system:3_linear_analysis.bode>)[bode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
