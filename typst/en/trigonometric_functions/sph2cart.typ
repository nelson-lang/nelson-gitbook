#import "nelson_help.typ": *

= sph2cart <trigonometric_functions:sph2cart>

Transform spherical coordinates to Cartesian.

== Syntax

- #raw("[x, y, z] = sph2cart(azimuth, elevation, r)");

== Input argument

/ azimuth: a numeric value: Azimuth angle.
/ elevation: a numeric value: Elevation angle.
/ r: a numeric value: Radius.

== Output argument

/ x: a numeric value (double or single real): Cartesian coordinates
/ y: a numeric value (double or single real): Cartesian coordinates
/ z: a numeric value (double or single real): Cartesian coordinates

== Description

#strong[sph2cart]; transforms Cartesian to spherical coordinates.
== Example

``````matlab
azimut = [0.7854, 0.7854, -0.7854, -0.7854; 2.3562, 2.3562, -2.3562, -2.3562];
elevation = [0.6155, -0.6155, 0.6155, -0.6155; 0.6155, -0.6155, 0.6155, -0.6155];
radius = 1.7321 * ones(2, 4);
[x, y, z] = sph2cart(azimut, elevation, radius)
``````


== See also

#nlink(<trigonometric_functions:cart2sph>)[cart2sph];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
