# im2frame

Convert image to movie frame.

## 📝 Syntax

- F = im2frame(RGB)
- F = im2frame(X, map)
- F = im2frame(X)

## 📥 Input argument

- RGB - m-by-n-by-3 numeric array: Truecolor image, defined as an m-by-n-by-3 numeric array. For images of data type double, the values must be within the range [0, 1].
- X - m-by-n matrix of integers: Indexed image (double or uint8)
- map - c-by-3 numeric matrix: Colormap linked to the indexed image X, defined as a c-by-3 numeric matrix with values ranging from [0, 1]. Each row of the matrix represents an RGB triplet, specifying the red, green, and blue components of a colormap color.

## 📤 Output argument

- F - a structure: Movie frame with two fields: cdata and colormap.

## 📄 Description

<b>F = im2frame(RGB)</b> converts the truecolor image <b>RGB</b> into a movie frame <b>F</b>.

<b>F = im2frame(X, map)</b> converts the indexed image <b>X</b> along with its colormap map into a movie frame <b>F</b>.

<b>F = im2frame(X)</b> converts the indexed image <b>X</b> into a movie frame <b>F</b>, using the current colormap.

## 💡 Example

```matlab
examples_directory = [modulepath('graphics', 'root'), '/', 'examples/'];
edit([examples_directory, 'movie/demo_movie.m']);
run([examples_directory, 'movie/demo_movie.m']);
```

## 🔗 See also

[movie](../graphics/movie.md), [frame2im](../graphics/frame2im.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.13.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
