#import "../nelson_help.typ": *

= evalfr <control_system:3_linear_analysis.evalfr>

Evaluate frequency response at given frequency.

== Syntax

- #raw("frsp = evalfr(sys, f)");

== Input argument

/ sys: LTI model
/ f: single frequency

== Output argument

/ frsp: frequency response

== Description

The function #strong[evalfr(sys, f)]; computes the value of the transfer function for a given system model represented by #strong[sys]; at the complex number #strong[f];.


== Example

``````matlab
numerator = {[2, 0], [1, 3]};
denominator = {[4, 0, 3, -1], [1 , 3, 5]};
sys = tf(numerator, denominator);
z = 1 + j;
frsp = evalfr(sys, z)
``````


== See also

#nlink(<control_system:3_linear_analysis.bode>)[bode];, #nlink(<control_system:3_linear_analysis.freqresp>)[freqresp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
