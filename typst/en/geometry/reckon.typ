#import "nelson_help.typ": *

= reckon <geometry:reckon>

Point at a given spherical range and azimuth.

== Syntax

- #raw("[lat2, lon2] = reckon(lat1, lon1, arclen, az)");

== Input argument

/ lat1: latitude of the start point, in degrees.
/ lon1: longitude of the start point, in degrees.
/ arclen: spherical distance to travel, in degrees of arc.
/ az: azimuth of the direction of travel, in degrees clockwise from north.

== Output argument

/ lat2: latitude of the destination point, in degrees.
/ lon2: longitude of the destination point, in degrees.

== Description

#strong[reckon]; computes the latitude and longitude reached by starting at the point #strong[(lat1, lon1)]; and travelling the great-circle distance #strong[arclen]; along the initial azimuth #strong[az]; on a sphere. All angles are expressed in degrees. The inputs are broadcast together, so a scalar start point can be combined with vectors of ranges and azimuths.


== Example

``````matlab
[lat, lon] = reckon(0, 0, 10, 90)
``````


== See also

#nlink(<geometry:ellipse1>)[ellipse1];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
