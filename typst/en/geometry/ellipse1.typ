#import "nelson_help.typ": *

= ellipse1 <geometry:ellipse1>

Points on a small ellipse on a sphere.

== Syntax

- #raw("[lat, lon] = ellipse1(lat0, lon0, ellipse)");
- #raw("[lat, lon] = ellipse1(lat0, lon0, ellipse, offset)");
- #raw("[lat, lon] = ellipse1(lat0, lon0, ellipse, offset, npts)");

== Input argument

/ lat0: latitude of the ellipse center, in degrees.
/ lon0: longitude of the ellipse center, in degrees.
/ ellipse: two-element vector #strong[\[semimajor eccentricity\]];; the semimajor axis is a spherical distance in degrees of arc.
/ offset: azimuth of the semimajor axis, in degrees (default 0).
/ npts: number of points used to trace the ellipse (default 100).

== Output argument

/ lat: latitudes of the ellipse boundary points, in degrees.
/ lon: longitudes of the ellipse boundary points, in degrees.

== Description

#strong[ellipse1]; returns the latitude and longitude of points tracing a small ellipse on a sphere, centered at #strong[(lat0, lon0)];. The ellipse is described by its semimajor axis (a spherical distance in degrees of arc) and its eccentricity. A zero eccentricity produces a small circle whose radius equals the semimajor axis. The boundary points are obtained with #strong[reckon];, so the first and last points coincide.


== Example

``````matlab
[lat, lon] = ellipse1(0, 0, [10 0.8], 30);
f = figure();
plot(lon, lat);
axis equal
``````


== See also

#nlink(<geometry:reckon>)[reckon];, #nlink(<geometry:axes2ecc>)[axes2ecc];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [Initial version.],
)

// Author: Allan CORNET
