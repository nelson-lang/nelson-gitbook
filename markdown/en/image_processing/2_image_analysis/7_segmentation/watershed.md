# watershed

Compute watershed regions of a 2-D image or 3-D volume.

## 📝 Syntax

- L = watershed(I)
- L = watershed(I, conn)

## 📥 Input argument

- I - Finite real 2-D or 3-D numeric or logical image.
- conn - Connectivity, 4 or 8 for images, 6, 18, or 26 for volumes. The default value is 8 for images and 26 for volumes.

## 📤 Output argument

- L - Double label array. Watershed ridge elements are set to 0.

## 📄 Description

Compute watershed regions of a finite real 2-D image or 3-D volume.

Connectivity can be 4, 8, or an equivalent 3-by-3 matrix for images, and 6, 18, 26, or an equivalent 3-by-3-by-3 array for volumes.

Labels identify catchment basins, and watershed ridge elements are set to 0.

## 💡 Example

Segment a synthetic relief image

```matlab
[X,Y]=meshgrid(linspace(-1,1,96),linspace(-1,1,64));
I=min((X+0.45).^2+Y.^2,(X-0.45).^2+Y.^2);
L=watershed(I,4);
figure; subplot(1,2,1); imagesc(I); title('Relief');
subplot(1,2,2); imagesc(L); title('Watershed labels');
```

<img src="watershed_1.png" align="middle"/>

## 🔗 See also

[imhmin](../../../image_processing/imhmin.md), [imextendedmin](../../../image_processing/imextendedmin.md), [imregionalmin](../../../image_processing/imregionalmin.md), [imimposemin](../../../image_processing/imimposemin.md), [activecontour](../../../image_processing/activecontour.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
