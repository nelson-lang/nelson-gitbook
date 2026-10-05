#import "nelson_help.typ": *

= rotx <geometry:rotx>

3x3 transformation matrix for rotations around x-axis

== Syntax

- #raw("rm = rotx(angle)");

== Input argument

/ angle: angle in degree: scalar value.

== Output argument

/ rm: 3x3 transformation matrix: real-valued orthogonal matrix.

== Description

#strong[rotx]; returns 3x3 transformation matrix for rotations around x-axis.


== Bibliography

Goldstein, H., C. Poole and J. Safko, Classical Mechanics, 3rd Edition, San Francisco: Addison Wesley, 2002, pp. 142–144.

== Example

``````matlab
r = rotx(90)
``````


== See also

#nlink(<geometry:roty>)[roty];, #nlink(<geometry:rotz>)[rotz];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
