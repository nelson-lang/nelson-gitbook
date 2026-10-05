#import "../../nelson_help.typ": *

= imregister <image_processing:3_geometry_registration_3d.6_geometric_transforms.imregister>

Register a moving image to a fixed image.

== Syntax

- #raw("registered = imregister(moving, fixed, transformType, optimizer, metric)");
- #raw("registered = imregister(..., Name, Value)");

== Input argument

/ moving: Moving grayscale or RGB image.
/ fixed: Fixed grayscale or RGB image with the same size as moving.
/ transformType: Transformation type passed to imregtform.
/ optimizer: Optimizer structure.
/ metric: Metric structure or metric name.

== Output argument

/ registered: Registered moving image, sampled on the fixed image grid.

== Description

imregister estimates a 2-D transform with imregtform and resamples the moving image on the fixed image grid with imwarp. Supported interpolation methods are nearest, linear, bilinear and cubic.


== Example

Register a translated image

``````matlab
I=zeros(64,64); I(24:40,22:38)=1;
J=imtranslate(I,[7 -5],'nearest');
[optimizer,metric]=imregconfig('monomodal');
K=imregister(I,J,'translation',optimizer,metric,'Interpolation','nearest');
figure; subplot(1,3,1); imagesc(I); axis image; title('Moving');
subplot(1,3,2); imagesc(J); axis image; title('Fixed');
subplot(1,3,3); imagesc(K); axis image; title('Registered');
``````


#align(center)[#image("imregister_1.png")]

== See also

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregconfig>)[imregconfig];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregcorr>)[imregcorr];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregtform>)[imregtform];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imwarp>)[imwarp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
