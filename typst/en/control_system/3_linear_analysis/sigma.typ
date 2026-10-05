#import "../nelson_help.typ": *

= sigma <control_system:3_linear_analysis.sigma>

Singular value response of an LTI model.

== Syntax

- #raw("sigma(sys)");
- #raw("sv = sigma(sys, w)");
- #raw("[sv, wout] = sigma(sys, w)");

== Input argument

/ sys: LTI model.
/ w: Frequency vector in rad\/s.

== Output argument

/ sv: Singular values for each frequency.
/ wout: Frequency vector.

== Description

#strong[sigma]; computes singular values of the frequency response.


== Example

``````matlab
sys = tf(2, [1 1]); [sv, w] = sigma(sys, [1 2 4])
``````


== See also

#nlink(<control_system:3_linear_analysis.freqresp>)[freqresp];, #nlink(<control_system:3_linear_analysis.bode>)[bode];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
