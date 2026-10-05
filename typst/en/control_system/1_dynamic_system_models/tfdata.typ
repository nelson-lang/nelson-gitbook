#import "../nelson_help.typ": *

= tfdata <control_system:1_dynamic_system_models.tfdata>

Access transfer function model data.

== Syntax

- #raw("[numerator, denominator] = tfdata(sys)");
- #raw("[numerator, denominator, Ts] = tfdata(sys)");
- #raw("sys = tf(numerator, denominator)");
- #raw("sys = tf(numerator, denominator, Ts)");

== Input argument

/ sys: a LTI model.

== Output argument

/ numerator: polynomial coefficients: a row vector or as a cell array of row vectors.
/ denominator: polynomial coefficients: a row vector or as a cell array of row vectors.
/ Ts: Sampling time Ts, default: in seconds

== Description

The function #strong[tfdata(sys)]; retrieves the matrix data #strong[numerator];,#strong[denominator]; from the transfer function model (LTI array) represented by #strong[sys];.

 If #strong[sys]; is initially in the form of a state-space model (LTI array), it is automatically converted to the transfer function representation before extracting the matrix data.


== Example

``````matlab
numerator = 10;
denominator = [20, 33, 44];
sys = tf(numerator, denominator)
[num, den] = tfdata(sys)
``````


== See also

#nlink(<control_system:1_dynamic_system_models.tf>)[tf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
