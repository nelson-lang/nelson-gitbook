# imread

Read image from graphics file.

## Syntax

- A = imread(filename)
- [A, map] = imread(filename)
- [A, map, transparency] = imread(filename)

## Input argument

- filename - a row vector characters or scalar string: name of graphics file.

## Output argument

- A - Image data: array.
- map - Colormap: m-by-3 matrix.
- transparency - Transparency information: matrix.

## Description

<p>
            imread reads the image data from the given file into a matrix.</p>

<p></p>

| Format | Description |
| ------ | ----------- |

|
|
|
|
|
|
|
|
|
|
|
|

## Example

```matlab
f = figure();
filename = [tempdir, 'ngc6543a.gif'];
websave(filename, 'https://solarviews.com/raw/ds/ngc6543a.gif');
img = imread(filename);
imagesc(img);
```

<img src="imread.png" align="middle"/>

## See also

[imagesc](../graphics/imagesc.md), [imformats](../graphics_io/imformats.md).

## History

| Version | Description             |
| ------- | ----------------------- |
| 1.0.0   | initial version         |
| 1.13.0  | pcx, tiff formats added |

## Author

Allan CORNET
