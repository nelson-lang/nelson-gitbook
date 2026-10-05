#import "../nelson_help.typ": *

= angle <elementary_functions:3_complex_numbers.angle>

Phase angle

== Syntax

- #raw("R = angle(Z)");

== Input argument

/ Z: a variable (double, single, complex)

== Output argument

/ R: result of angle function.

== Description

#strong[angle]; computes the phase angle, equivalent to #strong[atan2(imag(Z), real(Z))];.


== Example

``````matlab
x = [1+i,-i;i,2i];
r = angle(x)
``````


== See also

#nlink(<trigonometric_functions:atan2>)[atan2];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
