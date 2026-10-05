#import "../nelson_help.typ": *

= minreal <control_system:1_dynamic_system_models.minreal>

Minimal realization or pole-zero cancellation.

== Syntax

- #raw("[Am, Bm, Cm, Dm] = minreal(A, B, C, D)");
- #raw("[Am, Bm, Cm, Dm] = minreal(A, B, C, D, tol)");
- #raw("sysOut = minreal(sysIn)");
- #raw("sysOut = minreal(sysIn, tol)");

== Input argument

/ A (n x n): Represents the system's state-transition matrix. It describes how the system's internal state evolves over time.
/ B (n x m): Describes the input-to-state mapping. It shows how control inputs affect the change in the system's state.
/ C (p x n): Represents the state-to-output mapping. It shows how the system's state variables are related to the system's outputs.
/ D (p x m): Describes the direct feedthrough from inputs to outputs. In many systems, this matrix is zero because there is no direct feedthrough.
/ tol: scalar real (tolerance).
/ sysIn: LTI model.

== Output argument

/ Am, Bm, Cm, Dm: a minimal realization of the state-space system A, B, C, D.
/ sysOut: a minimal realization of LTI input.

== Description

#strong[minreal]; function reduces state-space models by eliminating uncontrollable or unobservable states.

 In transfer functions or zero-pole-gain models, it cancels pole-zero pairs. The resulting model maintains the same response characteristics as the original model but with minimal order.

 When using #strong[sysOut \= minreal(sysIn, tol)];, you can customize the tolerance for state elimination or pole-zero cancellation.

 The default tolerance is set to sqrt(eps), and increasing this value prompts more aggressive cancellations, potentially further simplifying the model.


== Example

``````matlab
sysIn = ss([1 0;0 -2], [-1;0], [2 1], 0, 3.2);
sysOut = minreal(sysIn)
``````


== See also

#nlink(<control_system:1_dynamic_system_models.ss>)[ss];, #nlink(<control_system:1_dynamic_system_models.tf>)[tf];, #nlink(<control_system:1_dynamic_system_models.balreal>)[balreal];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
