#import "../nelson_help.typ": *

= zero <control_system:1_dynamic_system_models.zero>

Zeros and gain of SISO dynamic system.

== Syntax

- #raw("Z = zero(sys)");
- #raw("[Z, gain] = zero(sys)");

== Input argument

/ sys: a LTI model.

== Output argument

/ Z: Zeros of the dynamic system.
/ gain: Zero-pole-gain of the dynamic system.

== Description

#strong[\[Z, gain\] \= zero(sys)]; returns the zero-pole-gain of #strong[sys];.


== Example

``````matlab
sys = tf([4.2,0.25,-0.004],[1,9.6,17]);
[Z, gain] = zero(sys)
``````


== See also

#nlink(<control_system:1_dynamic_system_models.pole>)[pole];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
