#import "nelson_help.typ": *

= wrapTo2Pi <trigonometric_functions:wrapTo2Pi>

Wrap angle in radians to \[0, 2\*pi\].

== Syntax

- #raw("beta = wrapTo2Pi(alpha)");

== Input argument

/ alpha: angle in radians: scalar, vector or matrix.

== Output argument

/ beta: wrapped angle in radians, in \[0, 2\*pi\].

== Description

#strong[wrapTo2Pi(alpha)]; wraps angles in radians to the interval #strong[\[0, 2\*pi\]];. Positive multiples of 2\*pi map to 2\*pi, and zero maps to 0.


== Example

``````matlab
wrapTo2Pi([-1 2*pi])
``````


== See also

#nlink(<trigonometric_functions:wrapToPi>)[wrapToPi];, #nlink(<trigonometric_functions:wrapTo360>)[wrapTo360];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
