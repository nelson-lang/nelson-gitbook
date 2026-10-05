#import "../../nelson_help.typ": *

= imref3d <image_processing:3_geometry_registration_3d.6_geometric_transforms.imref3d>

Create a 3-D spatial reference structure.

== Syntax

- #raw("R = imref3d()");
- #raw("R = imref3d(imageSize)");
- #raw("R = imref3d(imageSize, pixelExtentInWorldX, pixelExtentInWorldY, pixelExtentInWorldZ)");
- #raw("R = imref3d(imageSize, xWorldLimits, yWorldLimits, zWorldLimits)");

== Input argument

/ imageSize: Positive integer vector that specifies the volume size as rows, columns and planes.
/ pixelExtentInWorldX, pixelExtentInWorldY, pixelExtentInWorldZ: Positive finite scalar voxel extents in world coordinates.
/ xWorldLimits: Two increasing finite values that define the world-coordinate limits along columns.
/ yWorldLimits: Two increasing finite values that define the world-coordinate limits along rows.
/ zWorldLimits: Two increasing finite values that define the world-coordinate limits along planes.

== Output argument

/ R: 3-D spatial reference structure with image size, intrinsic limits, world limits, world extents and voxel extents.

== Description

Create a 3-D spatial reference structure with image size, world limits, intrinsic limits, world extents and voxel extents.


== Examples

Create a referenced volume grid

``````matlab
R = imref3d([32 40 12], [0.5 40.5], [0.5 32.5], [10.5 22.5]);
R.PixelExtentInWorldZ
``````

Create a volume reference from voxel extents

``````matlab
R = imref3d([2 3 4], 2, 3, 4);
R.XWorldLimits
R.YWorldLimits
R.ZWorldLimits
``````


== See also

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref2d>)[imref2d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine3d>)[affine3d];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
