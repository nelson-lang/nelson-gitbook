# dsearchn

Nearest point search

## 📝 Syntax

- idx = dsearchn(P, Q)
- [idx, dist] = dsearchn(P, Q)
- idx = dsearchn(P, T, Q)
- idx = dsearchn(P, T, Q, outind)

## 📄 Description

<b>dsearchn</b> returns the nearest point in <b>P</b> for each query point.

## 💡 Example

Nearest point and distance.

```matlab
P = [0 0; 1 0; 1 1; 0 1];
[idx, dist] = dsearchn(P, [0.2 0.1])
```

## 🔗 See also

[tsearchn](../geometry/tsearchn.md), [triangulation](../geometry/triangulation.md).

## 🕔 History

| Version | 📄 Description   |
| ------- | ---------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
