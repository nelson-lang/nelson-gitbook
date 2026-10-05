#import "nelson_help.typ": *

= pol2cart <trigonometric_functions:pol2cart>

Transforms polar or cylindrical coordinates to Cartesian.

== Syntax

- #raw("[x, y] = pol2cart(theta, rho)");
- #raw("[x, y, z] = pol2cart(theta, rho, z)");

== Input argument

/ theta: a numeric value: Angular coordinate.
/ rho: a numeric value: Radial coordinate.
/ z: a numeric value: Elevation coordinate.

== Output argument

/ x: a numeric value (double or single real): Cartesian coordinates
/ y: a numeric value (double or single real): Cartesian coordinates
/ z: a numeric value (double or single real): Cartesian coordinates

== Description

#strong[pol2cart]; transforms polar or cylindrical coordinates to Cartesian.
== Example

``````matlab
theta = [0 pi/4 pi/2 pi];
rho = [5 5 10 10];
[x, y] = pol2cart(theta, rho)
``````


== See also

#nlink(<trigonometric_functions:cart2pol>)[cart2pol];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
