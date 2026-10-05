#import "../nelson_help.typ": *

= feedback <control_system:2_model_conversion_interconnection.feedback>

Feedback connection of multiple models.

== Syntax

- #raw("sys = feedback(sys1, sys2)");
- #raw("sys = feedback(sys1, sys2, sign)");

== Input argument

/ sys1, sys2: LTI models: Systems to connect in a feedback loop.
/ sign: Type of feedback: -1 (default) or +1.

== Output argument

/ sys: Closed-loop system.

== Description

#strong[sys \= feedback(sys1, sys2)]; generates a model object,#strong[sys];, representing the negative feedback interconnection of the model objects #strong[sys1]; and #strong[sys2];.


== Example

``````matlab
G = tf([2 5 1], [1 2 3]);
C = tf([5, 10], [1, 10]);
sys = feedback(G, C, +1)

``````


== See also

#nlink(<control_system:6_matrix_computations.cloop>)[cloop];, #nlink(<control_system:2_model_conversion_interconnection.append>)[append];, #nlink(<control_system:2_model_conversion_interconnection.ssselect>)[ssselect];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
