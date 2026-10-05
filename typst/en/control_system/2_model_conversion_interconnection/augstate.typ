#import "../nelson_help.typ": *

= augstate <control_system:2_model_conversion_interconnection.augstate>

Append state vector to output vector.

== Syntax

- #raw("sysa = augstate(sys)");
- #raw("[Aa, Ba, Ca, Da] = augstate(A, B, C, D)");

== Input argument

/ sys: LTI model.

== Output argument

/ sysa: State-space model with states appended to the outputs.

== Description

The function #strong[sysa \= augstate(sys)]; adds the state vector to the outputs of a state-space model.


== Example

``````matlab
sys = ss(10, 10, 20, 0);
sysa = augstate(sys)
``````


== See also

#nlink(<control_system:2_model_conversion_interconnection.feedback>)[feedback];, #nlink(<control_system:2_model_conversion_interconnection.series>)[series];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
