#import "nelson_help.typ": *

= interp2 <special_functions:interp2>

Interpolation for 2-D gridded data in meshgrid format

== Syntax

- #raw("Vq = interp2(X, Y, V, Xq, Yq)");
- #raw("Vq = interp2(V, Xq, Yq)");
- #raw("Vq = interp2(V)");
- #raw("Vq = interp2(V, k)");
- #raw("Vq = interp2(..., method)");
- #raw("Vq = interp2(..., method, extrapval)");

== Input argument

/ X, Y: Sample grid points: vectors or meshgrid arrays.
/ V: Sample values: real or complex matrix.
/ Xq, Yq: Query points.
/ method: 'linear', 'nearest', 'cubic', 'makima', or 'spline'.
/ extrapval: Scalar value returned outside the grid domain.

== Output argument

/ Vq: Interpolated values. For mixed-orientation query vectors, rows follow Yq and columns follow Xq.

== Description

#strong[interp2]; interpolates 2-D gridded data using meshgrid conventions. The default grid is X\=1:size(V,2), Y\=1:size(V,1).

 #strong[interp2(V)]; refines the default grid once. #strong[interp2(V,k)]; inserts 2^k-1 interpolated points between samples in each dimension; k\=0 returns V.

 Grid vectors must be strictly monotonic. Complex values are interpolated by real and imaginary parts separately. Without extrapval, out-of-domain queries return NaN for linear, nearest, and cubic methods; makima and spline extrapolate by default.

 The cubic-family N-D methods use a native tensor-product four-point stencil, with linear fallback on dimensions that have fewer than four samples.


== Examples

``````matlab
V = [1 2; 3 4];
interp2(V, 1.5, 1.5)
``````

``````matlab
V = [1 2; 3 4];
Vq = interp2(V, 1)
``````

``````matlab
V = [1 2; 3 4];
Vq = interp2(V, 0, 1.5, 'linear', -1)
``````

``````matlab
[X,Y] = meshgrid(-3:3);
V = peaks(X,Y);
[Xq,Yq] = meshgrid(-3:0.5:3);
Vq = interp2(X,Y,V,Xq,Yq,'linear');
``````


== See also

#nlink(<special_functions:interp1>)[interp1];, #nlink(<special_functions:interp3>)[interp3];, #nlink(<special_functions:interpn>)[interpn];, #nlink(<elementary_functions:1_array_creation_shape.meshgrid>)[meshgrid];.

// Author: Allan CORNET
