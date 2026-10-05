#import "../nelson_help.typ": *

= series <control_system:2_model_conversion_interconnection.series>

Series connection of two models.

== Syntax

- #raw("sys = series(sys1, sys2)");
- #raw("sys = series(sys1, sys2, outputs1, inputs2)");

== Input argument

/ sys1, sys2: LTI models.
/ outputs1: index vectors
/ inputs2: index vectors

== Output argument

/ sys: LTI model.

== Description

#strong[series]; function links two model objects in a sequential manner.

 It is versatile and can accept various types of models.

 However, for successful connection, both systems must share the same nature, being either continuous or discrete, and must have identical sample times.

 Static gains are treated as neutral and can be defined using regular matrices.


== Example

``````matlab
[A, B, C, D] = ord2(1, 3);
sys1 = ss(A, B, C, D);
[A, B, C, D] = ord2(3, 6);
sys2 = ss(A, B, C, D)
outputs1 = 1;
inputs2 = 1;
sys = series(sys1, sys2, outputs1, inputs2)

``````


== See also

#nlink(<control_system:2_model_conversion_interconnection.feedback>)[feedback];, #nlink(<control_system:2_model_conversion_interconnection.append>)[append];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
