#import "nelson_help.typ": *

= degtorad <trigonometric_functions:degtorad>

Convert angle from degrees to radians.

== Syntax

- #raw("r = degtorad(d)");

== Input argument

/ d: a numeric value (double or single)

== Output argument

/ r: a numeric value

== Description

#strong[r \= degtorad(d)]; converts angle units from degrees to radians for each element of #strong[d];.
== Example

``````matlab
D = 64.7;
R = degtorad(D);
radEarth = 6371;
dist = radEarth * R
``````


== See also

#nlink(<trigonometric_functions:deg2rad>)[deg2rad];, #nlink(<trigonometric_functions:radtodeg>)[radtodeg];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [1.0.0], [initial version],
)

// Author: Allan CORNET
