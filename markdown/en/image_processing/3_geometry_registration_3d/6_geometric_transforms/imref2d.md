# imref2d

Create a 2-D spatial reference structure.

## 📝 Syntax

- R = imref2d()
- R = imref2d(imageSize)
- R = imref2d(imageSize, pixelExtentInWorldX, pixelExtentInWorldY)
- R = imref2d(imageSize, xWorldLimits, yWorldLimits)

## 📥 Input argument

- imageSize - Positive integer vector that specifies the image size as rows and columns.
- pixelExtentInWorldX, pixelExtentInWorldY - Positive finite scalar pixel extents in world coordinates.
- xWorldLimits - Two increasing finite values that define the world-coordinate limits along columns.
- yWorldLimits - Two increasing finite values that define the world-coordinate limits along rows.

## 📤 Output argument

- R - 2-D spatial reference structure with image size, intrinsic limits, world limits, world extents and pixel extents.

## 📄 Description


Create a 2-D spatial reference structure with image size, world limits, intrinsic limits, world extents and pixel extents. The structure can be used as the OutputView value for imwarp or as the source reference in imwarp.

## 💡 Examples

Warp an image into a larger referenced view

```matlab
I=zeros(48,48); I(16:32,16:32)=1;
R=imref2d([60 72],[0.5 72.5],[0.5 60.5]);
J=imwarp(I,affine2d([1 0 0;0 1 0;12 8 1]),'nearest','OutputView',R);
figure; subplot(1,2,1); imagesc(I); title('Input');
subplot(1,2,2); imagesc(J); title('Referenced');
```
<img src="imref2d_1.png" align="middle"/>
Create a reference from pixel extents

```matlab
R = imref2d([2 3], 2, 3);
R.XWorldLimits
R.YWorldLimits
```


## 🔗 See also

[imref3d](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imref3d.md), [imwarp](../../../image_processing/3_geometry_registration_3d/6_geometric_transforms/imwarp.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
