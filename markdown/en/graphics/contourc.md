# contourc

Contour matrix computation

## 📝 Syntax

- M = contourc(Z)
- M = contourc(X, Y, Z)
- M = contourc(..., levels)

## 📥 Input argument

- X - x-coordinates: vector or matrix.
- Y - y-coordinates: vector or matrix.
- Z - z-coordinates: numeric matrix.
- levels - Contour levels: scalar count, vector of levels, or [k k] for one level.

## 📤 Output argument

- M - Two-row contour matrix.

## 📄 Description

<b>contourc</b> computes the contour matrix used by contour plotting functions without creating axes, figures, or graphics objects.

Each contour segment starts with a header column. The first row contains the contour level and the second row contains the number of points in that segment. The following columns contain x and y point coordinates.

## 💡 Example

Compute contour lines for a matrix.

```matlab
Z = peaks(20);
M = contourc(Z, 5)
```

## 🔗 See also

[contour](../graphics/contour.md), [contourf](../graphics/contourf.md), [contour3](../graphics/contour3.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.17.0  | initial version |

<!--
## 👤 Author

Allan CORNET
-->
