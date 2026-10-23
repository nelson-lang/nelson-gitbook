#import "../nelson_help.typ": *

= rlocus <control_system:3_linear_analysis.rlocus>

Root locus of a SISO model.

== Syntax

- #raw("rlocus(sys)");
- #raw("rlocus(sys, k)");
- #raw("rlocus(sys1, sys2, ...)");
- #raw("[r, k] = rlocus(sys)");
- #raw("[r, k] = rlocus(sys, k)");

== Input argument

/ sys: SISO dynamic system
/ k: Vector of feedback gains

== Output argument

/ r: Complex closed-loop pole locations, one column per gain
/ k: Vector of gains used

== Description

The root locus function, #strong[rlocus(sys)];, computes and plots the locus of the closed-loop poles of the feedback loop #strong[feedback(k\*sys, 1)];, that is the roots of #strong[den + k\*num];, as the gain #strong[k]; sweeps from 0 to infinity.

 Each branch starts at an open-loop pole (marked #strong[x];) for #strong[k \= 0]; and ends at a finite open-loop zero (marked #strong[o];) or goes to infinity as #strong[k]; grows.

 When a gain vector #strong[k]; is supplied, those gains are used instead of the automatically selected range.

 With output arguments, #strong[\[r, k\] \= rlocus(sys)]; returns the closed-loop pole locations and the gains without plotting.


== Examples

``````matlab
f = figure();
sys = tf([1 3], [1 3 2]);
rlocus(sys);

``````


#align(center)[#image("rlocus_1.svg")]
``````matlab
G = tf(1, [1 3 2]);
[r, k] = rlocus(G);

``````


== See also

#nlink(<control_system:3_linear_analysis.nyquist>)[nyquist];, #nlink(<control_system:3_linear_analysis.bode>)[bode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
