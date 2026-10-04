# griddata

Interpolate scattered data

## 📝 Syntax

- Vq = griddata(P, V, xq, yq)
- Vq = griddata(x, y, V, xq, yq)
- Vq = griddata(x, y, z, V, xq, yq, zq)
- Vq = griddata(..., method)
- [Xq, Yq, Vq] = griddata(x, y, V, xq, yq)

## 📄 Description

<b>griddata</b> interpolates scattered samples at query coordinates.

## 💡 Example

Linear interpolation on planar scattered data.

```matlab
x = [0; 1; 1; 0];
y = [0; 0; 1; 1];
V = x + y;
Vq = griddata(x, y, V, 0.25, 0.25)
```

## 🔗 See also

[scatteredInterpolant](../geometry/scatteredInterpolant.md), [delaunayn](../geometry/delaunayn.md).

## 🕔 History

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
