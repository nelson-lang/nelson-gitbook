#import "../../nelson_help.typ": *

= imresize3 <image_processing:3_geometry_registration_3d.8_volumes_3d.imresize3>

Resize 3-D volume

== Syntax

- #raw("B = imresize3(V, scale)");
- #raw("B = imresize3(V, [numrows numcols numplanes])");
- #raw("B = imresize3(__, method)");
- #raw("B = imresize3(__, Name, Value)");

== Input argument

/ V: Input volume, specified as a real nonsparse numeric or logical 3-D array.
/ scale: Positive finite scalar resize factor applied to rows, columns, and planes.
/ \[numrows numcols numplanes\]: Output volume size. Values are rounded to positive integer dimensions.
/ method: Interpolation method: 'linear' (default) or 'nearest'.
/ Name, Value: Supported options are 'Method' and 'Antialiasing'. The antialiasing option is parsed for compatibility.

== Output argument

/ B: Resized volume, returned with the same class as V.

== Description

#strong[imresize3]; resizes volumetric image data by a scalar scale factor or to an explicit three-element output size.

 The linear method uses separable trilinear interpolation. The nearest method uses nearest-neighbor sampling and preserves logical volumes exactly.


== Example

Resize a synthetic volume and display a central slice.

``````matlab
[X, Y, Z] = meshgrid(linspace(-1, 1, 48), linspace(-1, 1, 40), linspace(-1, 1, 20));
V = exp(-6 * (X .^ 2 + Y .^ 2 + Z .^ 2));
B = imresize3(V, [64 64 32], 'linear');
figure;
imshow(B(:, :, 16), []);
title('Resized central slice');
``````


#align(center)[#image("imresize3_1.png")]

== See also

#nlink(<image_processing:3_geometry_registration_3d.8_volumes_3d.imgaussfilt3>)[imgaussfilt3];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imresize>)[imresize];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
