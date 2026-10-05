#import "../nelson_help.typ": *

= hsvd <control_system:3_linear_analysis.hsvd>

Hankel singular values of dynamic system.

== Syntax

- #raw("hsv = hsvd(sys)");

== Input argument

/ sys: State-space model

== Output argument

/ hsv: Hankel singular values.

== Description

#strong[hsv \= hsvd(sys)]; calculates the Hankel singular values (hsv) for the dynamic system #strong[sys];.

 These singular values are computed in state coordinates that balance the energy transfers from input to state and from state to output.

 The Hankel singular values serve as a measure of the impact of each state on the input\/output characteristics of the system.

 Analogous to how singular values relate to matrix rank, small Hankel singular values indicate states that may be omitted to streamline the model and simplify its representation.


== Example

``````matlab
A = [ -0.04165  0.0000  4.9200  -4.9200  0.0000  0.0000  0.0000;
-5.2100  -12.500  0.0000   0.0000  0.0000  0.0000  0.0000;
0.0000   3.3300 -3.3300   0.0000  0.0000  0.0000  0.0000;
0.5450   0.0000  0.0000   0.0000 -0.5450  0.0000  0.0000;
0.0000   0.0000  0.0000   4.9200 -0.04165 0.0000  4.9200;
0.0000   0.0000  0.0000   0.0000 -5.2100 -12.500  0.0000;
0.0000   0.0000  0.0000   0.0000  0.0000  3.3300 -3.3300];

B = [  0.0000   0.0000;
12.5000   0.0000;
0.0000   0.0000;
0.0000   0.0000;
0.0000   0.0000;
0.0000   12.500;
0.0000   0.0000];

C = [  1.0000   0.0000  0.0000   0.0000  0.0000  0.0000  0.0000
0.0000   0.0000  0.0000   1.0000  0.0000  0.0000  0.0000
0.0000   0.0000  0.0000   0.0000  1.0000  0.0000  0.0000];

D = [];

sys = ss(A, B, C, D);
hsv = hsvd(sys)
``````


== See also

#nlink(<control_system:1_dynamic_system_models.balreal>)[balreal];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
