#import "../nelson_help.typ": *

= append <control_system:2_model_conversion_interconnection.append>

Appends the inputs and outputs of the two models.

== Syntax

- #raw("sys = append(sys1, sys2, ..., sysN)");

== Input argument

/ sys1, sys2, ..., sysN: LTI models.

== Output argument

/ sys: LTI model.

== Description

#strong[sys \= append(sys1, sys2, ..., sysN)]; combines the inputs and outputs of models #strong[sys1]; through #strong[sysN];, creating an augmented model represented by #strong[sys];.


== Example

``````matlab
sys1 = tf(1,[1 0]);
sys2 = tf([1 -1], [4 2]);
sys = append(sys1, 10, sys2)

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
