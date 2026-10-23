#import "nelson_help.typ": *

= radtodeg <trigonometric_functions:radtodeg>

Convert angle from radians to degrees.

== Syntax

- #raw("d = radtodeg(r)");

== Input argument

/ r: a numeric value (double or single)

== Output argument

/ d: a numeric value

== Description

#strong[d \= radtodeg(r)]; converts angle units from radians to degrees for each element of #strong[r];.
== Example

``````matlab
dist = 7194;
radEarth = 6371;
D = radtodeg(dist / radEarth)
``````


== See also

#nlink(<trigonometric_functions:rad2deg>)[rad2deg];, #nlink(<trigonometric_functions:degtorad>)[degtorad];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
