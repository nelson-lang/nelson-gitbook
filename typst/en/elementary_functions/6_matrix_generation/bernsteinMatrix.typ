#import "../nelson_help.typ": *

= bernsteinMatrix <elementary_functions:6_matrix_generation.bernsteinMatrix>

Bernstein matrix

== Syntax

- #raw("B = bernsteinMatrix(n, t)");

== Input argument

/ n: nonnegative integer: Approximation order.
/ t: number or vector: Evaluation point.

== Output argument

/ B: Bernstein Matrix: length(t) - by - n+1 matrix.

== Description

#strong[B \= bernsteinMatrix(n, t)]; constructs a Bernstein matrix#strong[B]; with dimensions length(t) - by - (n+1), where t is a vector.

 The Bernstein matrix is also referred to as the Bezier matrix.

 This function can calculate the points of a Bezier curve.


== Example

``````matlab
t = 0:1/100:1;
B = bernsteinMatrix(3, t);
P = [0 0 0; 1 2 1; 1 -2 3; 5 2 4];
bezierCurve = B * P;
plot3(bezierCurve(:,1), bezierCurve(:,2), bezierCurve(:,3))

``````


#align(center)[#image("bernsteinMatrix.svg")]

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.5.0], [initial version],
)

// Author: Allan CORNET
