#import "../nelson_help.typ": *

= care <control_system:5_control_design_tuning.care>

Continuous-time algebraic Riccati equation solution.

== Syntax

- #raw("[X, L, G] = care(A, B, Q)");
- #raw("[X, L, G] = care(A, B, Q, R, S, E)");

== Input argument

/ A: Matrix representing the state with dimensions n x n, where n corresponds to the number of states.
/ B: Matrix representing control with dimensions n x p, where p is the number of inputs.
/ Q: Matrix describing the cost associated with the state, having dimensions n x n, where n is the number of states.
/ R: Matrix representing the cost associated with control, with dimensions p x p, where p is the number of inputs.
/ S: Matrix that is optionally real-valued with dimensions n x p.
/ E: Matrix with dimensions n x n that serves as a descriptor matrix.

== Output argument

/ X: stabilized solution for the continuous-time Riccati equation of dimension n x n.
/ L: Closed-loop pole vector.
/ G: Gain matrix.

== Description

The function #strong[care(A, B, Q)]; calculates the exclusive solution, denoted as #strong[X];, for the continuous-time algebraic Riccati equation with matrices #strong[A];, #strong[B];, and #strong[Q];, and also provides additional matrices #strong[L]; and #strong[G];.


== Example

``````matlab
a = [-3 2;1 1];
b = [0 ; 1];
c = [1 -1];
r = 3;
[x, l, g] = care(a, b, c'*c, r)

``````


== See also

#nlink(<slicot:slicot_sb02od>)[slicot\_sb02od];, #nlink(<slicot:slicot_sg02ad>)[slicot\_sg02ad];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: SLICOT Documentation
