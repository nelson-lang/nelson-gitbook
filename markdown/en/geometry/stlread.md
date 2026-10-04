# stlread

Create triangulation from STL file

## 📝 Syntax

- TR = stlread(filename)
- [TR, fileformat, attributes, solidID] = stlread(filename)

## 📄 Description

<b>stlread</b> reads binary or text STL files and returns a <b>triangulation</b> object.

<b>fileformat</b> is <b>'binary'</b> or <b>'text'</b>. For binary files, <b>attributes</b> is a <b>uint16</b> column vector. For text files, <b>attributes</b> is an empty <b>uint16</b> matrix with one row per triangle. <b>solidID</b> is a column vector identifying the solid group of each triangle.

## 💡 Example

Write and read a simple STL file.

```matlab
P = [0 0 0; 1 0 0; 0 1 0];
T = [1 2 3];
TR = triangulation(T, P);
filename = [tempdir(), 'simple.stl'];
stlwrite(TR, filename);
[TR2, fileformat, attributes, solidID] = stlread(filename)
```

## 🔗 See also

[stlwrite](../geometry/stlwrite.md), [triangulation](../geometry/triangulation.md).

## 🕔 History

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
