#import "../nelson_help.typ": *

= step <control_system:4_time_frequency_response.step>

Step response plot of dynamic system.

== Syntax

- #raw("[y, t, x] = step(sys)");
- #raw("[y, t, x] = step(sys, t)");
- #raw("[y, t, x] = step(sys, tFinal)");
- #raw("[y, t, x] = step(sys, [t0, tFinal])");

== Input argument

/ sys: a lti model.
/ t: Time vector.
/ tFinal: End time for step response: scalar.
/ \[t0, tFinal\]: Time range for step response: two-element vector.

== Output argument

/ y: Simulated response data: matrix or vector.
/ t: Time vector: vector.
/ x: State trajectories: matrix or vector.

== Description

The function defaults to applying a step at t0 \= 0 with initial conditions U \= 0, dU \= 1, and td \= 0.

 The step function, used as #strong[\[y, tOut\] \= step(sys)];, calculates the step response (y) of the dynamic system #strong[sys];.

 The time vector tOut is in the time units of #strong[sys];, and the function automatically determines the time steps and simulation duration based on the system dynamics.

 If you use #strong[\[y, tOut\] \= step(sys, tFinal)];, the step response is computed from t \= 0 to the specified end time t \= tFinal.

 Similarly,#strong[\[y, tOut\] \= step(sys, \[t0, tFinal\])]; computes the step response from #strong[t0]; to #strong[tFinal];.


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
step(sys);

``````


#align(center)[#image("step.svg")]

== See also

#nlink(<control_system:2_model_conversion_interconnection.gensign>)[gensig];, #nlink(<control_system:4_time_frequency_response.lsim>)[lsim];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
