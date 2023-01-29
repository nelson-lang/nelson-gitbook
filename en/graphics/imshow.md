# imshow

Display image.

## Syntax

- imshow(filename)
- imshow(img)
- imshow(RGB)
- imshow(img, [low high])
- imshow(img, [])
- imshow(img, map)
- imshow(..., propertyName, propertyValue)
- go = imshow(...)

## Input argument

- filename - row vector character: file name of the image to display.
- img - grayscale image: matrix.
- RGB - truecolor image: m-by-n-by-3 array.
- [low high] - grayscale image display range.
- map - colormap: c-by-3 matrix.
- propertyName - a scalar string or row vector character (for compatibility).
- propertyValue - a value (for compatibility).

## Output argument

- go - a graphics object: image type.

## Description

  <p><b>imshow(img)</b> displays the image <b>im</b>.</p>

## Example

```matlab
f = figure();
filename = [tempdir, 'apollo_8_earthrise_1968_as08-14-2383.jpg'];
websave(filename, 'https://www.nasa.gov/sites/default/files/thumbnails/image/apollo_8_earthrise_1968_as08-14-2383.jpg');
h = imshow(filename)
```

## See also

[imread](imread.md), [image](image.md), [imagesc](imagesc.md), [colormap](colormap.html).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
