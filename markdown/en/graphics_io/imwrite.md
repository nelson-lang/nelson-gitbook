# imwrite

Write image to graphics file.

## 📝 Syntax

- imwrite(A, filename)
- imwrite(A, map, filename)
- imwrite(..., fmt)
- imwrite(..., propertyName, propertyValue)

## 📥 Input argument

- A - matrix: 3D for color and 2D for gray or indexed image.
- map - Colormap of indexed image:m-by-3 array.
- fmt - Format of output file: 'bmp', 'png', 'jpg', 'gif', ...
- filename - a row vector characters or scalar string: name of graphics file.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## 📄 Description


<b>imwrite(A, filename)</b> writes image data<b>A</b> to the file specified by <b>filename</b> 

Writable formats are PNG, JPEG/JFIF, GIF, WebP, TIFF, BMP/DIB, TGA, PBM, PGM, PPM/PNM and PCX. The format is selected from <b>fmt</b>, or from the filename extension. 

<b>A</b> may be logical, single, double, uint8 or uint16. A two-dimensional array is grayscale unless a K-by-3 colormap in [0, 1] is supplied; a direct-color image is M-by-N-by-3. The alpha matrix must be exactly M-by-N. Floating-point and logical data are normalized to 8 bits; uint8 data is used directly. An indexed image remains indexed when each palette entry has a consistent alpha value. uint16 input is accepted only for grayscale PNG, TIFF and PGM. Other formats report an explicit error. 

Files are replaced atomically after successful encoding, so an encoding error does not leave a partially written destination. 

 

Property name: 

 

<b>Quality</b>: JPEG or WebP quality in [0, 100] (75 by default). 

<b>Alpha</b>: M-by-N per-pixel matrix; floating-point values use [0, 1], uint8 values use [0, 255]. 

<b>Comment</b>: text stored when the selected codec supports this metadata. 

<b>Author</b>: author text stored when the selected codec supports this metadata. 

PNG, JPEG and TIFF store <b>Comment</b> and <b>Author</b>; GIF stores <b>Comment</b>. Other codecs ignore these properties without failing the image write. 

 

Properties for <b>gif</b> format: 

 

<b>WriteMode</b>: <b>overwrite</b> (default) or <b>append</b>. 

<b>LoopCount</b>: animation loop count; <b>Inf</b> repeats indefinitely. 

<b>DelayTime</b>: frame delay in seconds, in [0, 655].

## 💡 Examples



```matlab
f = figure();
A = rand(69, 69);
A(:,:,2) = rand(69,69);
A(:,:,3) = rand(69,69);
imshow(A);
imwrite(A, [tempdir, '69x69-RGB.png']);
close(f);
```
WebP with alpha and a 16-bit PNG.

```matlab
rgb = rand(16, 16, 3);
alpha = rand(16, 16);
gray16 = uint16(reshape(0:255, 16, 16) * 257);
imwrite(rgb, [tempdir, 'image.webp'], 'Quality', 90, 'Alpha', alpha);
imwrite(gray16, [tempdir, 'image16.png']);
```
GIF animation with complete animation options.

```matlab
firstFrame = uint8(zeros(32, 32, 3));
firstFrame(:, :, 1) = 255;
secondFrame = uint8(zeros(32, 32, 3));
secondFrame(:, :, 3) = 255;
filename_gif = [tempname(), '.gif'];
imwrite(firstFrame, filename_gif, 'gif', 'WriteMode', 'overwrite', ...
        'LoopCount', Inf, 'DelayTime', 0.25);
imwrite(secondFrame, filename_gif, 'gif', 'WriteMode', 'append', ...
        'DelayTime', 0.50);
```
<img src="imwrite_gif.gif" align="middle"/>


## 🔗 See also

[imread](../graphics_io/imread.md), [imshow](../graphics/4_images/imshow.md), [imformats](../graphics_io/imformats.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 1.0.0   | initial version |
| 1.13.0   | gif animation, pcx format added |
| 2.0.0   | WebP, portable codecs and 16-bit grayscale writing added |

<!--
## 👤 Author

Allan CORNET
-->
