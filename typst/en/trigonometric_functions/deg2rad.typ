#import "nelson_help.typ": *

= deg2rad <trigonometric_functions:deg2rad>

Convert angle from degrees to radians.

== Syntax

- #raw("r = deg2rad(d)");

== Input argument

/ d: a numeric value (double or single)

== Output argument

/ r: a numeric value

== Description

#strong[d \= deg2rad(r)]; converts angle units from degrees to radians for each element of #strong[r];.
== Example

``````matlab
D = 64.7;
R = deg2rad(D);
radEarth = 6371;
dist = radEarth * R
``````


== See also

#nlink(<trigonometric_functions:rad2deg>)[rad2deg];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
