#import "../nelson_help.typ": *

= pzmap <control_system:3_linear_analysis.pzmap>

Pole-zero map of a dynamic system.

== Syntax

- #raw("pzmap(sys)");
- #raw("[p, z] = pzmap(sys)");

== Input argument

/ sys: Dynamic system: a SISO LTI model.

== Output argument

/ p: Poles of the system.
/ z: Zeros of the system.

== Description

#strong[pzmap(sys)]; plots the poles and zeros of the dynamic system model #strong[sys]; in the complex plane.

 Each pole is marked with an #strong[x]; and each zero with an #strong[o];.

 When output arguments are requested, #strong[\[p, z\] \= pzmap(sys)]; returns the poles #strong[p]; and the zeros #strong[z]; without producing a plot.


== Examples

``````matlab
f = figure();
sys = tf([1 2], [1 3 2]);
pzmap(sys);

``````


#align(center)[#image("pzmap_1.svg")]
``````matlab
sys = tf([1 2], [1 3 2]);
[p, z] = pzmap(sys)

``````


== See also

#nlink(<control_system:1_dynamic_system_models.pole>)[pole];, #nlink(<control_system:1_dynamic_system_models.zero>)[zero];, #nlink(<control_system:3_linear_analysis.bode>)[bode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
