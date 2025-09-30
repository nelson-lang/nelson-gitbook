# frame2im

Retrieve image data from a movie frame.

## Syntax

- RGB = frame2im(F)
- [X, map] = frame2im(F)

## Input argument

- F - a structure: Movie frame, represented as a structure with two fields: cdata: An array of uint8 values storing the image data. colormap: The colormap. This field is empty ([]) for truecolor (RGB) images. A movie frame structure can be created using the im2frame and getframe functions.

## Output argument

- RGB - m-by-n-by-3 numeric array: Truecolor image (uint8).
- X - m-by-n numeric matrix: Indexed image (uint8).
- map - c-by-3 numeric matrix: Colormap corresponding to the indexed image X, returned as a c-by-3 numeric matrix with values in the range [0, 1]. Each row of the matrix represents an RGB triplet defining the red, green, and blue components of a colormap color.

## Description

<p>
            <b>RGB = frame2im(F)</b> extracts the truecolor (RGB) image from the movie frame <b>F</b>.</p>
<p>
                <b>[X, map] = frame2im(F)</b> retrieves the indexed image <b>X</b> and its corresponding colormap map from the movie frame <b>F</b>.</p>

## Example

```matlab
f = figure();
s = surf(peaks);
F = getframe(f)
RGB = frame2im(F);
figure;
imshow(RGB);
```

## See also

[im2frame](../graphics/im2frame.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.13.0  | initial version |

## Author

Allan CORNET
