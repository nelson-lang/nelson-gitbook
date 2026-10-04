# stlwrite

Create STL file from triangulation

## 📝 Syntax

- stlwrite(TR, filename)
- stlwrite(TR, filename, fileformat)
- stlwrite(TR, filename, ..., Name, Value)

## 📄 Description

<b>stlwrite</b> writes a <b>triangulation</b> object to a binary STL file by default.

<b>fileformat</b> can be <b>'binary'</b> or <b>'text'</b>. Use <b>'Attribute'</b> with binary files to write one <b>uint16</b> value per triangle. Use <b>'SolidIndex'</b> with text files to group triangles into solid sections.

## 💡 Example

Write a text STL file.

```matlab
P = [0 0; 1 0; 0 1];
T = [1 2 3];
TR = triangulation(T, P);
filename = [tempdir(), 'simple_text.stl'];
stlwrite(TR, filename, 'text')
```

## 🔗 See also

[stlread](../geometry/stlread.md), [triangulation](../geometry/triangulation.md).

## 🕔 History

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
