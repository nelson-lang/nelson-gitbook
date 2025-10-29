# imshow

Display image.

## 📝 Syntax

- imshow(filename)
- imshow(img)
- imshow(RGB)
- imshow(img, [low high])
- imshow(img, [])
- imshow(img, map)
- imshow(..., propertyName, propertyValue)
- go = imshow(...)

## 📥 Input argument

- filename - row vector character: file name of the image to display.
- img - grayscale image: matrix.
- RGB - truecolor image: m-by-n-by-3 array.
- [low high] - grayscale image display range.
- map - colormap: c-by-3 matrix.
- propertyName - a scalar string or row vector character (for compatibility).
- propertyValue - a value (for compatibility).

## 📤 Output argument

- go - a graphics object: image type.

## 📄 Description

<b>imshow(img)</b> displays the image <b>im</b>.

## 💡 Example

```matlab
f = figure();
filename = [tempdir, 'apollo_8_earthrise_1968_as08-14-2383.jpg'];
websave(filename, 'https://www.nasa.gov/wp-content/uploads/2025/05/3dmodels-casa-2025-astro.jpg');
h = imshow(filename);

```

## 🔗 See also

[imread](../graphics/imread.md), [image](../graphics/image.md), [imagesc](../graphics/imagesc.md), [colormap](../graphics/colormap.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
