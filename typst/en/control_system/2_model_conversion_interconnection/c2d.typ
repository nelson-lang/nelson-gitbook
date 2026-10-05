#import "../nelson_help.typ": *

= c2d <control_system:2_model_conversion_interconnection.c2d>

Convert model from continuous to discrete time.

== Syntax

- #raw("[P, G] = c2d(A, B, Ts)");
- #raw("sysd = c2d(sysc, Ts)");
- #raw("sysd = c2d(sysc, Ts, method)");
- #raw("sysd = c2d(sysc, Ts, 'prewarp', w0)");

== Input argument

/ A: State matrix: Nx-by-Nx matrix.
/ B: Input-to-state matrix: Nx-by-Nu matrix.
/ Ts: Sample time: positive scalar.
/ sysc: Continuous-time dynamic system: LTI model.
/ method: Discretization method: 'zoh', 'tustin', 'prewarp'
/ w0: prewarp frequency.

== Output argument

/ P: phi
/ G: gamma
/ sysd: Discrete-time model

== Description

The function #strong[sysd \= c2d(sysc, Ts)]; discretizes the continuous-time dynamic system model #strong[sysc]; using a zero-order hold on the inputs with a sample time of #strong[Ts];.

 For instance, you can use #strong[sysd \= c2d(sysc, Ts, method)]; to explicitly specify the discretization method.


== Example

``````matlab
A = [1  0.5; 0.5  1 ];
B = [0 -1; 1  0 ];
C = [ -1  0; 0  1 ];
D = [  1  0; 0 -1 ];
sys = ss(A, B, C, D);
Ts = 2;
sysd = c2d(sys, Ts, 'zoh')

``````


== See also

#nlink(<control_system:2_model_conversion_interconnection.d2c>)[d2c];, #nlink(<control_system:1_dynamic_system_models.ss>)[ss];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
