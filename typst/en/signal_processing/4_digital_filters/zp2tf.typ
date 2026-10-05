#import "../nelson_help.typ": *

= zp2tf <signal_processing:4_digital_filters.zp2tf>

Zero-pole to transfer function conversion.

== Syntax

- #raw("[NUM, DEN] = zp2tf(Z, P, K)");

== Input argument

/ Z: Locations of zeros, organized in columns for each system output.
/ P: Locations of poles, recorded as a column vector.
/ K: Gains.

== Output argument

/ NUM: Coefficients in the numerator, organized by rows corresponding to each system output.
/ DEN: Coefficients in the denominator, arranged as a row vector.

== Description

#strong[\[NUM, DEN\] \= zp2tf(Z, P, K)]; returns polynomial transfer function representation from zeros and poles.


== Bibliography

zpk2tf scipy implementation (MIT)

== Example

``````matlab
p = [0.5;complex(0.45, 0.5);complex(0.45, -0.5)];
z = [-1;complex(0, 1);complex(0, -1)];
k = 1;
[n, d] = zp2tf(z, p, k)
``````


== See also

#nlink(<control_system:1_dynamic_system_models.tf>)[tf];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
  [2.0.0], [CLI-runnable documentation example],
)

// Author: Allan CORNET
