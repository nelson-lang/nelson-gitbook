# alphaShape

Alpha shape object

## 📝 Syntax

- SHP = alphaShape(P)
- SHP = alphaShape(x, y)
- SHP = alphaShape(x, y, z)
- SHP = alphaShape(..., alpha)
- SHP = alphaShape(..., 'HoleThreshold', value, 'RegionThreshold', value)
- K = boundaryFacets(SHP)
- A = area(SHP)
- plot(SHP)

## 📄 Description


<b>alphaShape</b> stores points and alpha parameters for boundary and shape queries.

## 💡 Example

Create and plot an alpha shape.

```matlab
P = [0 0; 1 0; 1 1; 0 1; 0.4 0.6];
SHP = alphaShape(P);
A = area(SHP);
plot(SHP)
```


## 🔗 See also

[boundary](../geometry/boundary.md), [convhull](../geometry/convhull.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
