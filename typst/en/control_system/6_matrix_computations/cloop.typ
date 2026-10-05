#import "../nelson_help.typ": *

= cloop <control_system:6_matrix_computations.cloop>

Feedback connection of multiple models.

== Syntax

- #raw("model = cloop(sys)");
- #raw("model = cloop(sys, sign)");
- #raw("model = cloop(sys, outputs, inputs)");

== Input argument

/ sys: LTI model.
/ sign: Type of feedback: -1 (default) or +1.
/ outputs: vector indexes into the outputs.
/ inputs: vector indexes into the inputs.

== Output argument

/ sys: Closed-loop system.

== Description

#strong[cloop]; forms the closed-loop system when unity feedback is used.

 This function is deprecated and has limitations, please see #strong[feedback];. It is only applicable when the block in the feedback path is unity. Furthermore, its usage is restricted to system models expressed solely in transfer function form, and not in the more general "system".


== Example

``````matlab
m = 1000;
b = 50;
u = 500;
A = [0 1; 0 -b/m];
B = [0; 1/m];
C = [0 1];
D = 0;
OUTPUTS = -1;
INPUTS = 1;
sys = ss(A, B, C, D);

R = cloop(sys, OUTPUTS, INPUTS)

``````


== See also

#nlink(<control_system:2_model_conversion_interconnection.feedback>)[feedback];, #nlink(<control_system:2_model_conversion_interconnection.append>)[append];, #nlink(<control_system:2_model_conversion_interconnection.ssselect>)[ssselect];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
