#import "../nelson_help.typ": *

= impulse <control_system:4_time_frequency_response.impulse>

Impulse response plot of dynamic system.

== Syntax

- #raw("[y, t, x] = impulse(sys)");
- #raw("[y, t, x] = impulse(sys, tFinal)");
- #raw("[y, t, x] = impulse(sys, [t0, tFinal])");
- #raw("[y, t, x] = impulse(sys, t)");
- #raw("impulse(...)");

== Input argument

/ sys: a lti model.
/ t: Time samples: vector.
/ tFinal: End time for step response: scalar.
/ \[t0, tFinal\]: Time range for step response: two-element vector.

== Output argument

/ y: Simulated response data: matrix or vector.
/ tOut: Time vector: vector.
/ x: State trajectories: matrix or vector.

== Example

``````matlab
sys = tf(4,[1 2 10]);
t = 0:0.05:5;
f = figure();
impulse(sys,t);
``````


#align(center)[#image("impulse.svg")]

== See also

#nlink(<control_system:2_model_conversion_interconnection.gensign>)[step];, #nlink(<control_system:4_time_frequency_response.step>)[lsim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
