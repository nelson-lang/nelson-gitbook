# im2frame

Convert image to movie frame.

## Syntax

- F = im2frame(RGB)
- F = im2frame(X, map)
- F = im2frame(X)

## Input argument

- RGB - m-by-n-by-3 numeric array: Truecolor image, defined as an m-by-n-by-3 numeric array. For images of data type double, the values must be within the range [0, 1].
- X - m-by-n matrix of integers: Indexed image (double or uint8)
- map - c-by-3 numeric matrix: Colormap linked to the indexed image X, defined as a c-by-3 numeric matrix with values ranging from [0, 1]. Each row of the matrix represents an RGB triplet, specifying the red, green, and blue components of a colormap color.

## Output argument

- F - a structure: Movie frame with two fields: cdata and colormap.

## Description

<p>
            F = im2frame(RGB) converts the truecolor image RGB into a movie frame F.</p>

<p>
                F = im2frame(X, map) converts the indexed image X along with its colormap map into a movie frame F.</p>

<p>
                    F = im2frame(X) converts the indexed image X into a movie frame F, using the current colormap.</p>

## Example

```matlab
examples_directory = [modulepath('graphics', 'root'), '/', 'examples/'];
edit([examples_directory, 'movie/demo_movie.m']);
run([examples_directory, 'movie/demo_movie.m']);
```

## See also

[movie](../graphics/movie.md), [frame2im](../graphics/frame2im.md).

## History

| Version | Description     |
| ------- | --------------- |
| 1.13.0  | initial version |

## Author

Allan CORNET
