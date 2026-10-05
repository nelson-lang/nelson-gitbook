#import "../../nelson_help.typ": *

= intrinsicToWorld <image_processing:3_geometry_registration_3d.6_geometric_transforms.intrinsicToWorld>

Convert intrinsic image coordinates to world coordinates.

== Syntax

- #raw("[xWorld, yWorld] = intrinsicToWorld(R, xIntrinsic, yIntrinsic)");
- #raw("[xWorld, yWorld, zWorld] = intrinsicToWorld(R, xIntrinsic, yIntrinsic, zIntrinsic)");

== Input argument

/ R: 2-D or 3-D spatial reference structure created by imref2d or imref3d.
/ xIntrinsic, yIntrinsic, zIntrinsic: Intrinsic coordinates. The Z coordinate is used only with 3-D references.

== Output argument

/ xWorld, yWorld, zWorld: World coordinates corresponding to the intrinsic coordinates.

== Description

Maps intrinsic coordinates to world coordinates using the pixel or voxel extents stored in the spatial reference.


== Examples

Convert 2-D intrinsic coordinates

``````matlab
R = imref2d([2 3], 2, 3);
[xWorld, yWorld] = intrinsicToWorld(R, [1 3], [1 2])
``````

Convert 3-D intrinsic coordinates

``````matlab
R = imref3d([2 3 4], 2, 3, 4);
[xWorld, yWorld, zWorld] = intrinsicToWorld(R, [1 3], [1 2], [1 4])
``````


== See also

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.worldToIntrinsic>)[worldToIntrinsic];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref2d>)[imref2d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref3d>)[imref3d];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
