#import "../../nelson_help.typ": *

= affine2d <image_processing:3_geometry_registration_3d.6_geometric_transforms.affine2d>

Create a 2-D affine transformation structure.

== Syntax

- #raw("tform = affine2d()");
- #raw("tform = affine2d(T)");

== Input argument

/ T: 3-by-3 or 2-by-3 finite nonsingular affine matrix in row-vector convention. The last column must be \[0; 0; 1\] after expansion. When omitted, the identity transform is returned.

== Output argument

/ tform: Structure with Type, Dimensionality and T fields that can be passed to imwarp.

== Description

Create a 2-D affine transformation structure containing a row-vector convention matrix T. The structure can be passed to imwarp.


== Example

Translate an image with an affine transform

``````matlab
I=zeros(64,64); I(22:38,22:38)=1;
tform=affine2d([1 0 0;0 1 0;12 6 1]);
J=imwarp(I,tform,'Interpolation','nearest');
figure; subplot(1,2,1); imagesc(I); title('Input');
subplot(1,2,2); imagesc(J); title('Affine');
``````


#align(center)[#image("affine2d_1.png")]

== See also

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.projective2d>)[projective2d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.affine3d>)[affine3d];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imwarp>)[imwarp];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.fitgeotrans>)[fitgeotrans];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
