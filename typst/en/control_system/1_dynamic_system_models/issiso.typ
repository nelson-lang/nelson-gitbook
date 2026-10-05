#import "../nelson_help.typ": *

= issiso <control_system:1_dynamic_system_models.issiso>

Checks if dynamic system model is single input and single output.

== Syntax

- #raw("res = issiso(sys)");

== Input argument

/ sys: a lti model.

== Output argument

/ res: a logical: true if dynamic system model is single input and single output.

== Description

Checks if dynamic system model is single input and single output.


== Example

``````matlab
A = [-15,-20; 10, 0];
B = [5; 0];
C = [0, 1];
D = 0;
sys = ss(A, B, C, D);
issiso(sys)

A = [1 2; 3 4];
B = [1 0; 0 1];
C = [1 1; 1 1];
D = [0 0; 0 0];
sys = ss(A, B, C, D);
issiso(sys)
``````


== See also

#nlink(<control_system:1_dynamic_system_models.isdt>)[isdt];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
