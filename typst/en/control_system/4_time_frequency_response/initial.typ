#import "../nelson_help.typ": *

= initial <control_system:4_time_frequency_response.initial>

System response to initial states of state-space model.

== Syntax

- #raw("[y, t, x] = initial(sys, x0)");
- #raw("[y, t, x] = initial(sys, x0, Tfinal)");
- #raw("[y, t, x] = initial(sys, x0, t)");
- #raw("[y, t, x] = initial(sys, x0, [t0, tFinal])");
- #raw("initial(...)");

== Input argument

/ sys: a lti model.
/ x0: Initial state values: vector.
/ t: Time samples: vector.
/ tFinal: End time for step response: scalar.
/ \[t0, tFinal\]: Time range for step response: two-element vector.

== Output argument

/ y: Simulated response data: matrix or vector.
/ tOut: Time vector: vector.
/ x: State trajectories: matrix or vector.

== Description

#strong[\[y, tOut\] \= initial(sys, x0)]; calculates the unforced initial response (y) of the dynamic system #strong[sys]; from the specified initial state #strong[x0];.

 The time vector #strong[tOut]; is provided in the time units of #strong[sys];, and the initial function automatically adapts time steps and simulation duration based on the system dynamics.

 When you use #strong[\[y, tOut\] \= initial(sys, x0, tFinal)];, the function simulates the response from t \= 0 to the final time t \= tFinal.

 Similarly,#strong[\[y, tOut\] \= initial(sys, x0, \[t0, tFinal\])]; simulates the response from t0 to tFinal.

 Additionally,#strong[\[y, tOut\] \= initial(sys, x0, t)]; returns the initial response of #strong[sys]; at the specified times provided in the vector #strong[t];.


== Example

``````matlab
A = [-10 -20 -30;1  0  0; 0  1  0];
B = [1;   0;   0];
C = [0   0   1];
D = 0;
T = [0:0.1:1];
U = zeros(size(T, 1), size(T, 2));
X0 = [0.1 0.1 0.1];
sys = ss(A, B, C, D);
initial(sys, X0);

``````


#align(center)[#image("initial.svg")]

== See also

#nlink(<control_system:2_model_conversion_interconnection.gensign>)[step];, #nlink(<control_system:4_time_frequency_response.step>)[lsim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
