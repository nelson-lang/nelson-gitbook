#import "nelson_help.typ": *

= wrapToPi <trigonometric_functions:wrapToPi>

Wrap angle in radians to \[-pi, pi\].

== Syntax

- #raw("beta = wrapToPi(alpha)");

== Input argument

/ alpha: angle in radians: scalar, vector or matrix.

== Output argument

/ beta: wrapped angle in radians, in \[-pi, pi\].

== Description

#strong[wrapToPi(alpha)]; wraps angles in radians to the interval #strong[\[-pi, pi\]];. Positive multiples of pi map to pi, negative multiples map to -pi.


== Example

``````matlab
wrapToPi([4 -4])
``````


== See also

#nlink(<trigonometric_functions:wrapTo2Pi>)[wrapTo2Pi];, #nlink(<trigonometric_functions:wrapTo180>)[wrapTo180];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
