# fspecial

Create predefined 2-D image filters.

## 📝 Syntax

- H = fspecial(type)
- H = fspecial('average', hsize)
- H = fspecial('disk', radius)
- H = fspecial('gaussian', hsize, sigma)

## 📥 Input argument

- type - Filter family name: 'average', 'disk', 'gaussian', 'sobel', 'prewitt', 'laplacian', or 'log'.
- hsize - Filter size for 'average', 'gaussian', and 'log'. It can be a scalar or a two-element vector of positive integers.
- radius - Nonnegative disk radius used with type 'disk'.
- sigma - Positive standard deviation used with type 'gaussian' or 'log'.
- alpha - Finite scalar in the range [0, 1] used with type 'laplacian'.

## 📤 Output argument

- H - Predefined 2-D filter kernel returned as a double matrix.

## 📄 Description


Create predefined 2-D image filters. Supported types include average, disk, gaussian, sobel, prewitt, laplacian and log.

## 💡 Example

Create and display a Gaussian filter

```matlab
H=fspecial('gaussian',[21 21],3);
figure; imagesc(H); g=linspace(0,1,64)'; colormap([g g g]); title('Gaussian filter');
```
<img src="fspecial_1.png" align="middle"/>


## 🔗 See also

[imfilter](../../../image_processing/1_image_basics/3_filtering_edges/imfilter.md), [imgaussfilt](../../../image_processing/1_image_basics/3_filtering_edges/imgaussfilt.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
