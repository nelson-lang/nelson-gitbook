#import "../../nelson_help.typ": *

= smooth3 <graphics:1_plots.7_surfaces_volumes_polygons.smooth3>

Smooth 3-D data.

== Syntax

- #raw("W = smooth3(V)");
- #raw("W = smooth3(V, method)");
- #raw("W = smooth3(V, method, windowSize)");
- #raw("W = smooth3(V, method, windowSize, sd)");

== Input argument

/ V: Real numeric or logical 3-D volume data.
/ method: Smoothing method: 'box' or 'gaussian'. The default is 'box'.
/ windowSize: Positive odd integer scalar or three-element vector. The default is \[3 3 3\].
/ sd: Positive standard deviation for the gaussian method. The default is 0.65.

== Output argument

/ W: Smoothed double array with the same size as V.

== Description

#strong[smooth3]; smooths volumetric data with a separable 3-D box or gaussian kernel and replicated boundary values.


== Example

Smooth a small volume with a gaussian kernel.

``````matlab
V = rand(10, 10, 10);
W = smooth3(V, 'gaussian', 5);
``````


== See also

#nlink(<graphics:1_plots.7_surfaces_volumes_polygons.isosurface>)[isosurface];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.isonormals>)[isonormals];, #nlink(<graphics:1_plots.7_surfaces_volumes_polygons.patch>)[patch];.
