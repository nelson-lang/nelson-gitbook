#import "../../nelson_help.typ": *

= imwarp <image_processing:3_geometry_registration_3d.6_geometric_transforms.imwarp>

Warp an image or volume using a numeric transform matrix.

== Syntax

- #raw("J = imwarp(I, T)");
- #raw("J = imwarp(I, RI, T)");
- #raw("J = imwarp(V, RV, T)");
- #raw("J = imwarp(I, T, method)");
- #raw("J = imwarp(I, T, Name, Value)");
- #raw("[J, R] = imwarp(...)");

== Input argument

/ I, V: 2-D grayscale, RGB, RGBA image, or 3-D volume.
/ RI, RV: Optional source spatial reference, imref2d for images or imref3d for volumes.
/ T: Numeric transform matrix or affine\/projective transform structure.
/ Name, Value: Supported options are Interpolation, FillValues, and OutputView.

== Output argument

/ J: Warped image or volume, preserving the input class for common image classes.
/ R: Output spatial reference.

== Description

Warp an image using a numeric 3-by-3 projective matrix, 2-by-3 affine matrix, or a transform structure.

 An imref2d structure can be supplied after the image to define source world coordinates.

 Supported 2-D interpolation methods are nearest, linear, bilinear and cubic.

 OutputView can be a size vector, same, full, or an imref2d structure.

 FillValues can be scalar or one value per image channel, with numeric or logical values.

 For 3-D volumes, imwarp accepts affine3d or a 4-by-4 affine matrix.

 3-D calls support optional imref3d references, nearest or linear interpolation, and scalar FillValues.


== Example

Warp an image

``````matlab
I=zeros(64,64); I(20:36,24:40)=1;
T=[1 0 0;0 1 0;10 6 1];
J=imwarp(I,T,'Interpolation','nearest');
figure; subplot(1,2,1); imagesc(I); g=linspace(0,1,64)'; colormap([g g g]); title('Input');
subplot(1,2,2); imagesc(J); g=linspace(0,1,64)'; colormap([g g g]); title('Warped');
``````


#align(center)[#image("imwarp_1.png")]

== See also

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imref3d>)[imref3d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine3d>)[affine3d];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
