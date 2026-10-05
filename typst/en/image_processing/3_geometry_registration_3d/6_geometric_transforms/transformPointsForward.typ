#import "../../nelson_help.typ": *

= transformPointsForward <image_processing:3_geometry_registration_3d.6_geometric_transforms.transformPointsForward>

Apply a forward geometric transformation to points.

== Syntax

- #raw("[x, y] = transformPointsForward(tform, u, v)");
- #raw("X = transformPointsForward(tform, U)");
- #raw("[x, y, z] = transformPointsForward(tform, u, v, w)");

== Input argument

/ tform: Geometric transformation structure created by affine2d, affine3d or projective2d.
/ u, v, w: Coordinate arrays of identical size. Supply u and v for a 2-D transformation, or u, v and w for a 3-D transformation.
/ U: Packed point matrix with one column per dimension: N-by-2 for a 2-D transformation, N-by-3 for a 3-D transformation.

== Output argument

/ x, y, z: Transformed coordinate arrays, same size as the corresponding inputs.
/ X: Packed matrix of transformed points, same size as U.

== Description

Apply the forward geometric transformation stored in #strong[tform]; to a set of points, using the row-vector convention #strong[\[x ... 1\] \= \[u ... 1\] \* tform.T];. For a projective transformation the result is normalized by its homogeneous coordinate.

 Points can be given either as separate coordinate arrays of equal size, or as a single packed matrix with one column per dimension.


== Example

Rotate points by 30 degrees

``````matlab
tform = affine2d([cosd(30) sind(30) 0; -sind(30) cosd(30) 0; 0 0 1]);
[x, y] = transformPointsForward(tform, 1, 0)
``````


== See also

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.transformPointsInverse>)[transformPointsInverse];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine2d>)[affine2d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine3d>)[affine3d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.projective2d>)[projective2d];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
