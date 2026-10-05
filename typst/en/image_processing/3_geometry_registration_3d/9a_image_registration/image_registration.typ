#import "../../nelson_help.typ": *

= image\_registration <image_processing:3_geometry_registration_3d.9a_image_registration.image_registration>

Image registration task overview.

== Description

Image registration aligns a moving image with a fixed image by estimating a geometric transform and resampling the moving image on the target grid.

 Use #strong[imregconfig]; to create registration settings, #strong[imregcorr]; for phase-correlation based estimates, #strong[imregtform]; to estimate a transform, #strong[imregister]; for direct registration, and #strong[imwarp]; to apply transforms explicitly.


== Example

Register a translated image.

``````matlab
I = zeros(32, 32);
I(10:18, 12:20) = 1;
J = imtranslate(I, [3 -2]);
[optimizer, metric] = imregconfig('monomodal');
K = imregister(I, J, 'translation', optimizer, metric, 'Interpolation', 'nearest');
``````


== See also

#nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregconfig>)[imregconfig];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregcorr>)[imregcorr];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregtform>)[imregtform];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imregister>)[imregister];, #nlink(<image_processing:3_geometry_registration_3d.6_geometric_transforms.imwarp>)[imwarp];.

== History

#table(
  columns: 2,
  table.header([Version], [Description]),
  [2.0.0], [initial version],
)

// Author: Allan CORNET
