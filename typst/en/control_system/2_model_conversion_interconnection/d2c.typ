#import "../nelson_help.typ": *

= d2c <control_system:2_model_conversion_interconnection.d2c>

Convert model from discrete to continuous time.

== Syntax

- #raw("sysc = d2c(sysd)");
- #raw("sysc = d2c(sysd, method)");
- #raw("sysc = d2c(sysd, 'prewarp', w0)");

== Input argument

/ sysd: Discrete-time dynamic system: LTI model.
/ method: Discretization method: 'zoh', 'tustin', 'prewarp'
/ w0: prewarp frequency.

== Output argument

/ sysc: continuous-time model

== Description

The function #strong[sysc \= d2c(sysd)]; transforms a discrete-time dynamic system model #strong[sysd]; into a continuous-time model, employing zero-order hold on the inputs.

 For instance, you can use #strong[sysc \= d2c(sysd, method)]; to explicitly define the conversion method.


== Example

``````matlab
A = [0.25, 0.5; 0, 0.1];
B = [1; 0];
C = [-1, 0];
sys = ss(A, B, C, 0, 0.2);
sysc = d2c(sys, 'zoh')

``````


== See also

#nlink(<control_system:2_model_conversion_interconnection.c2d>)[c2d];, #nlink(<control_system:1_dynamic_system_models.ss>)[ss];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
