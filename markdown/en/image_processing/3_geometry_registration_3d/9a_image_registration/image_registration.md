# image_registration

Image registration task overview.

## 📄 Description

Image registration aligns a moving image with a fixed image by estimating a geometric transform and resampling the moving image on the target grid.

Use <b>imregconfig</b> to create registration settings, <b>imregcorr</b> for phase-correlation based estimates, <b>imregtform</b> to estimate a transform, <b>imregister</b> for direct registration, and <b>imwarp</b> to apply transforms explicitly.

## 💡 Example

Register a translated image.

```matlab
I = zeros(32, 32);
I(10:18, 12:20) = 1;
J = imtranslate(I, [3 -2]);
[optimizer, metric] = imregconfig('monomodal');
K = imregister(I, J, 'translation', optimizer, metric, 'Interpolation', 'nearest');
```

## 🔗 See also

[imregconfig](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imregconfig.md), [imregcorr](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imregcorr.md), [imregtform](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imregtform.md), [imregister](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imregister.md), [imwarp](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imwarp.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
