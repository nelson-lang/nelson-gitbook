#import "../nelson_help.typ": *

= tf <control_system:1_dynamic_system_models.tf>

Constructs a transfer function model.

== Syntax

- #raw("sys = tf()");
- #raw("sys = tf('s')");
- #raw("sys = tf(numerator, denominator)");
- #raw("sys = tf(numerator, denominator, Ts)");

== Input argument

/ numerator: polynomial coefficients: a row vector or as a cell array of row vectors.
/ denominator: polynomial coefficients: a row vector or as a cell array of row vectors.
/ Ts: Sampling time Ts, default: in seconds
/ sysIn: LTI model.

== Output argument

/ sys: Output transfer function system model.

== Description

#strong[sys \= tf(numerator, denominator)]; is used to create a continuous-time transfer function model.

 It is defined by specifying #strong[numerator]; and #strong[denominator]; of the transfer function.

 When you include the #strong[Ts]; parameter, it allows you to create a discrete-time transfer function.

 Setting #strong[Ts]; to -1 indicates an unspecified sampling time, and, in this scenario, the input arguments are treated as if they pertain to a continuous-time system.


== Examples

``````matlab
numerator = 10;
denominator = [20, 33, 44];
sys = tf(numerator, denominator)
``````

``````matlab
numerator = 10;
denominator = [20, 33, 44];
Ts = 1.5;
sys = tf(numerator, denominator, Ts)
``````


== See also

#nlink(<control_system:1_dynamic_system_models.ss>)[ss];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
