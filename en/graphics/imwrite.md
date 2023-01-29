# imwrite

Write image to graphics file.

## Syntax

- imwrite(A, filename)
- imwrite(A, map, filename)
- imwrite(..., fmt)
- imwrite(..., , propertyName, propertyValue)

## Input argument

- A - matrix: 3D for color and 2D for gray or indexed image.
- map - Colormap of indexed image:m-by-3 array.
- fmt - Format of output file: 'bmp', 'png', 'jpg', ...
- filename - a row vector characters or scalar string: name of graphics file.
- propertyName - a scalar string or row vector character.
- propertyValue - a value.

## Description

  <p><b>imwrite(A, filename)</b> writes image data <b>A</b> to the file specified by <b>filename</b></p>
  <p/>
  <p>Property name:</p>
  <p/>
  <p><b>Quality</b>: quality of output file: scalar in the range [0, 100] (75 as default).</p>
  <p><b>Alpha</b>: matrix of values in the range [0, 1]: Transparency of each pixel.</p>
  <p><b>Comment</b>: character vector, string scalar, cell array of character vectors or string array: Comment added to image.</p>
  <p><b>Author</b>: character vector or string scalar: Author information.</p>

## Example

```matlab
f = figure();
A = rand(69, 69);
A(:,:,2) = rand(69,69);
A(:,:,3) = rand(69,69);
imshow(A);
imwrite(A, [tempdir, '69x69-RGB.png']);
```

## See also

[imread](imread.md), [imshow](imshow.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.0.0   | initial version |

## Author

Allan CORNET
