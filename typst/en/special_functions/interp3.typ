#import "nelson_help.typ": *

= interp3 <special_functions:interp3>

Interpolation for 3-D gridded data in meshgrid format

== Syntax

- #raw("Vq = interp3(X, Y, Z, V, Xq, Yq, Zq)");
- #raw("Vq = interp3(V, Xq, Yq, Zq)");
- #raw("Vq = interp3(V)");
- #raw("Vq = interp3(V, k)");
- #raw("Vq = interp3(..., method)");
- #raw("Vq = interp3(..., method, extrapval)");

== Input argument

/ X, Y, Z: Sample grid points: vectors or meshgrid arrays.
/ V: Sample values: real or complex 3-D array.
/ Xq, Yq, Zq: Query points.
/ method: 'linear', 'nearest', 'cubic', 'makima', or 'spline'.

== Output argument

/ Vq: Interpolated values.

== Description

#strong[interp3]; interpolates 3-D gridded data using meshgrid conventions. The default grid is X\=1:size(V,2), Y\=1:size(V,1), Z\=1:size(V,3).

 The cubic-family methods use a native tensor-product four-point stencil, with linear fallback on dimensions that have fewer than four samples.

 #strong[interp3(V)]; and #strong[interp3(V,k)]; refine the default grid. Grid vectors must be strictly monotonic.


== Examples

``````matlab
V = reshape(1:8, [2 2 2]);
Vq = interp3(V, 1.5, 1.5, 1.5)
``````

``````matlab
V = reshape(1:8, [2 2 2]);
Vq = interp3(V, 1)
``````

``````matlab
x = 1:2;
y = 1:2;
z = 1:2;
[X,Y,Z] = meshgrid(x, y, z);
V = reshape(1:8, [2 2 2]);
Vq = interp3(X, Y, Z, V, 1.5, 1.5, 1.5, 'linear')
``````

``````matlab
V = reshape(1:8, [2 2 2]);
Vq = interp3(V, 0, 1.5, 1.5, 'linear', -1)
``````


== See also

#nlink(<special_functions:interp1>)[interp1];, #nlink(<special_functions:interp2>)[interp2];, #nlink(<special_functions:interpn>)[interpn];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

// Author: Allan CORNET
