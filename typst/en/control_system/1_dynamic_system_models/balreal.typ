#import "../nelson_help.typ": *

= balreal <control_system:1_dynamic_system_models.balreal>

Gramian-based balancing of state-space realizations.

== Syntax

- #raw("[sysb, g] = balreal(sys)");
- #raw("[sysb, g, T, Ti] = balreal(sys)");

== Input argument

/ sys: LTI model.

== Output argument

/ sysb: LTI model.
/ g: Diagonal vector of the balanced Gramian matrix.
/ T: State similarity transform matrix.
/ Ti: State similarity transform inverse matrix.

== Description

#strong[balreal(sys)]; calculates a balanced realization, denoted as #strong[sysb];, for the stable segment of the linear time-invariant (LTI) model #strong[sys];.

 This process is applicable to both continuous and discrete systems. If #strong[sys]; is not initially in state-space form, the function automatically converts it to state space using #strong[ss]; before proceeding with the balanced realization.


== Example

``````matlab
sys = ss([-1, 0; 0.1, -3], [1, 0]', [0, 1], 0);
[sysb, g, T, Ti] = balreal(sys)

``````


== See also

#nlink(<control_system:6_matrix_computations.gram>)[gram];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
