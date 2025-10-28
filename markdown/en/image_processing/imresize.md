# imresize

Resize image by scale or output size

## 📝 Syntax

- img2 = imresize(img, scale)
- img2 = imresize(img, [numrows numcols])
- [Y, newmap] = imresize(X, map, ...)
- ... = imresize(..., method)
- ... = imresize(..., Name, Value)

## 📥 Input argument

- img - Image to be resized, specified as a numeric array, logical array of any dimension. Input must be nonsparse, and numeric input must be real.
- scale - Resize factor, specified as a positive number or two-element vector. If scale is between 0 and 1, output is smaller; if greater than 1, output is larger. imresize applies the same scale factor to row and column dimensions unless a vector is specified.
- [numrows numcols] - Row and column dimensions of output image, specified as a two-element vector of positive numbers. NaN can be used for either dimension to preserve aspect ratio.
- X - Indexed image to be resized, specified as a real, nonsparse numeric array of positive integers.
- map - Colormap associated with indexed image X, specified as a c-by-3 numeric matrix with values in [0, 1].
- method - Interpolation method (optional, default: 'bicubic'): must be always at last position parameter.
- Name, Value - Optional name-value arguments.

## 📤 Output argument

- B - Resized image, returned as a numeric, logical array of the same data type as the input image, A.
- Y - Resized indexed image, returned as a numeric array of the same data type as the input indexed image, X.
- newmap - Colormap of the resized indexed image Y, returned as an m-by-3 numeric matrix. By default, imresize returns a new, optimized colormap with the resized image. To return the original colormap, use the Colormap name-value argument.

## 📄 Description

The <b>imresize</b> function resizes an image by a specified scale factor or to a specified output size. It supports grayscale, RGB, binary images, as well as indexed images with colormaps.

For numeric and logical images, the default interpolation method is 'bicubic'.

When resizing, imresize applies the scale factor to both row and column dimensions unless a two-element vector is specified. If the output size is not an integer, imresize rounds up using the ceil function.

For indexed images, imresize returns the resized image and an optimized colormap by default. The original colormap can be returned using the 'Colormap' name-value argument.

Supported interpolation methods include

- 'nearest': Nearest neighbor interpolation
- 'bilinear': Bilinear interpolation
- 'bicubic': Bicubic interpolation
- 'box': Box-shaped kernel
- 'lanczos2': Lanczos-2 kernel
- 'lanczos3': Lanczos-3 kernel

Supported Pairs Name, Value:

- 'Antialiasing': true/false (default: true)
- 'Colormap': 'optimized' (default) or 'original' (indexed image only)
- 'Dither': true (default) or false (indexed image only)

Limitations:

- Input must be nonsparse and real for numeric images.
- For large scale factors, output image size may be significantly larger than input.
- Bicubic interpolation can produce pixel values outside the original range.

## 💡 Example

imresize example

```matlab
filename = [tempdir, 'apollo_8_earthrise_1968_as08-14-2383.jpg'];
websave(filename, 'https://www.nasa.gov/wp-content/uploads/2025/05/3dmodels-casa-2025-astro.jpg');

im = imread(filename);
size(im)

im1 = imresize(im, 0.05, 'bicubic');
size(im1)

figure;

subplot(1,2,1);          % 1 row, 2 columns, first subplot
image(im);
title('Original Image');

subplot(1,2,2);          % second subplot
image(im1);
title('Resized Image');
```

<img src="imresize_1.png" align="middle"/>

## 🔗 See also

[imrotate](../image_processing/imrotate.md), [imshow](../image_processing/imshow.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.15.0  | initial version |

## 👤 Author

Allan CORNET
