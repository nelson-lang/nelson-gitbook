#import "nelson_help.typ": *

= wrapTo180 <trigonometric_functions:wrapTo180>

Wrap angle in degrees to \[-180, 180\].

== Syntax

- #raw("beta = wrapTo180(alpha)");

== Input argument

/ alpha: angle in degrees: scalar, vector or matrix.

== Output argument

/ beta: wrapped angle in degrees, in \[-180, 180\].

== Description

#strong[wrapTo180(alpha)]; wraps angles in degrees to the interval #strong[\[-180, 180\]];. Positive multiples of 180 map to 180, negative multiples map to -180.


== Example

``````matlab
wrapTo180([190 -190 360])
``````


== See also

#nlink(<trigonometric_functions:wrapTo360>)[wrapTo360];, #nlink(<trigonometric_functions:wrapToPi>)[wrapToPi];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
