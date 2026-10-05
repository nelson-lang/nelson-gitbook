#import "../nelson_help.typ": *

= pole <control_system:1_dynamic_system_models.pole>

Poles of dynamic system.

== Syntax

- #raw("P = pole(sys)");

== Input argument

/ sys: a LTI model.

== Output argument

/ P: Poles of dynamic system.

== Description

#strong[P \= pole(sys)]; returns the poles of #strong[sys];.


== Example

``````matlab
A = [-15, -20; 10, 0];
B = [5; 0];
C = [0, 10];
D = 0;
sys = ss(A, B, C, D);
P = pole(sys)
``````


== See also

#nlink(<control_system:1_dynamic_system_models.zero>)[zero];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
