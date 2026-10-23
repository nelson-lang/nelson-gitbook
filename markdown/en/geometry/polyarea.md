# polyarea

Area of a polygon.

## 📝 Syntax

- a = polyarea(x, y)
- a = polyarea(x, y, dim)

## 📥 Input argument

- x, y - the vertex coordinates of the polygon, as vectors or matrices of the same size.
- dim - a positive integer: the dimension along which the vertices run (default: the first non-singleton dimension).

## 📤 Output argument

- a - the area of the polygon.

## 📄 Description


<b>polyarea</b> returns the area of the polygon whose vertices are given by <b>x</b> and <b>y</b>, computed with the shoelace formula. When the inputs are matrices, the area is computed for each polygon along the chosen dimension.

## 💡 Example



```matlab
a = polyarea([0 1 1 0], [0 0 1 1])
```


## 🔗 See also

[convhull](../geometry/convhull.md), [boundary](../geometry/boundary.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
