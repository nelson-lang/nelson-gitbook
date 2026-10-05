#import "nelson_help.typ": *

= rad2deg <trigonometric_functions:rad2deg>

Convert angle from radians to degrees.

== Syntax

- #raw("d = rad2deg(r)");

== Input argument

/ r: a numeric value (double or single)

== Output argument

/ d: a numeric value

== Description

#strong[d \= rad2deg(r)]; converts angle units from radians to degrees for each element of #strong[r];.
== Example

``````matlab
dist = 7194;
radEarth = 6371;
D = rad2deg(dist / radEarth)
``````


== See also

#nlink(<trigonometric_functions:deg2rad>)[deg2rad];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
