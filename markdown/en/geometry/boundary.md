# boundary

Boundary facets of a set of points

## 📝 Syntax

- K = boundary(P)
- K = boundary(x, y)
- K = boundary(x, y, z)
- K = boundary(..., s)
- [K, A] = boundary(x, y)
- boundary(P)

## 📄 Description


<b>boundary</b> returns boundary facets for planar or spatial points. 

When called without output, it plots the boundary.

## 💡 Example

Compute and plot the boundary of planar points.

```matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
K = boundary(P);
boundary(P)
```


## 🔗 See also

[alphaShape](../geometry/alphaShape.md), [convhull](../geometry/convhull.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
