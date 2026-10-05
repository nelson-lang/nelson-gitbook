#import "../../nelson_help.typ": *

= sizesMatch <image_processing:3_geometry_registration_3d.6_geometric_transforms.sizesMatch>

Determine whether a spatial reference matches an image size.

== Syntax

- #raw("tf = sizesMatch(R, image)");

== Input argument

/ R: 2-D or 3-D spatial reference structure created by imref2d or imref3d.
/ image: Image or volume array to compare with the spatial reference image size.

== Output argument

/ tf: Logical scalar true when the array size matches the spatial reference dimensions.

== Description

Compares the leading image dimensions with the ImageSize field of a 2-D or 3-D spatial reference.


== Example

Check whether an RGB image matches a 2-D reference

``````matlab
R = imref2d([2 3], 2, 3);
tf = sizesMatch(R, zeros(2, 3, 3))
``````


== See also

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref2d>)[imref2d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref3d>)[imref3d];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
