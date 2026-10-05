#import "nelson_help.typ": *

= wrapTo360 <trigonometric_functions:wrapTo360>

Wrap angle in degrees to \[0, 360\].

== Syntax

- #raw("beta = wrapTo360(alpha)");

== Input argument

/ alpha: angle in degrees: scalar, vector or matrix.

== Output argument

/ beta: wrapped angle in degrees, in \[0, 360\].

== Description

#strong[wrapTo360(alpha)]; wraps angles in degrees to the interval #strong[\[0, 360\]];. Positive multiples of 360 map to 360, and zero maps to 0.


== Example

``````matlab
wrapTo360([-10 370 720])
``````


== See also

#nlink(<trigonometric_functions:wrapTo180>)[wrapTo180];, #nlink(<trigonometric_functions:wrapTo2Pi>)[wrapTo2Pi];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
