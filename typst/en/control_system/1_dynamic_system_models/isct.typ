#import "../nelson_help.typ": *

= isct <control_system:1_dynamic_system_models.isct>

Checks if dynamic system model is in continuous time.

== Syntax

- #raw("res = isct(sys)");

== Input argument

/ sys: a lti model.

== Output argument

/ res: a logical: true if dynamic system model is in continuous time.

== Description

Checks if dynamic system model is in continuous time.


== Example

``````matlab
A = [-15,-20; 10, 0];
B = [5; 0];
C = [0, 1];
D = 0;
sys1 = ss(A, B, C, D);
isct(sys1)
sys2 = ss(A, B, C, D, 0.2);
isct(sys2)
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
