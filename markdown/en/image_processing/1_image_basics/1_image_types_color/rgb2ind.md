# rgb2ind

Convert RGB image to indexed image.

## 📝 Syntax

- [X, map] = rgb2ind(RGB, n)
- [X, map] = rgb2ind(RGB, n, dither\_option)
- [X, map] = rgb2ind(RGB, tol)
- X = rgb2ind(RGB, map)
- X = rgb2ind(RGB, map, dither\_option)

## 📥 Input argument

- RGB - RGB image, an M-by-N-by-3 array of class uint8, uint16, single, or double.
- n - Number of colors in the output colormap, a scalar integer greater than or equal to 1. Minimum-variance quantization is used.
- tol - Tolerance in the interval (0, 1). Uniform quantization is used and the colormap contains the distinct grid colors that occur.
- map - Colormap, an M-by-3 array of values in the range [0, 1]. Each pixel is mapped to the nearest color in the colormap.
- dither\_option - 'dither' (default) applies Floyd-Steinberg error diffusion, 'nodither' maps each pixel to its nearest color without dithering.

## 📤 Output argument

- X - Indexed image with zero-based indices. Class is uint8 when the colormap has 256 or fewer entries, otherwise uint16.
- map - Colormap, a double array with three columns and values in the range [0, 1].

## 📄 Description


Convert an RGB image to an indexed image and its associated colormap. When the second argument is a scalar integer, minimum-variance quantization builds a colormap of at most that many colors; when the image has that many or fewer distinct colors the result is lossless. When the second argument is a scalar in the interval (0, 1), uniform quantization is used. When the second argument is an M-by-3 colormap, each pixel is mapped to the nearest color in the colormap. 

Indices in <b>X</b> are zero-based, matching indexed images produced by integer inputs. Floyd-Steinberg dithering is applied by default and can be disabled with 'nodither'.

## 💡 Examples

Quantize an RGB image to 16 colors

```matlab
R = uint8(255 * rand(32, 32, 3));
[X, map] = rgb2ind(R, 16, 'nodither');
size(map)
max(X(:))
```
Map an RGB image onto a fixed palette

```matlab
RGB = cat(3, [10 240; 250 0], [20 10; 250 0], [200 10; 250 0]);
RGB = uint8(RGB);
map = [0 0 0; 1 1 1; 1 0 0; 0 0 1];
X = rgb2ind(RGB, map, 'nodither')
```


## 🔗 See also

[ind2rgb](../../../image_processing/1_image_basics/1_image_types_color/ind2rgb.md), [ind2gray](../../../image_processing/1_image_basics/1_image_types_color/ind2gray.md), [rgb2gray](../../../image_processing/1_image_basics/1_image_types_color/rgb2gray.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
