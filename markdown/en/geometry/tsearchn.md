# tsearchn

Point location in a triangulation

## 📝 Syntax

- idx = tsearchn(P, T, Q)
- [idx, bary] = tsearchn(P, T, Q)

## 📄 Description


<b>tsearchn</b> finds the simplex containing each query point. 

Points outside the triangulation return <b>NaN</b>.

## 💡 Example

Find the containing triangle and barycentric coordinates.

```matlab
P = [0 0; 1 0; 1 1; 0 1];
T = delaunayn(P);
[idx, bary] = tsearchn(P, T, [0.25 0.25])
```


## 🔗 See also

[dsearchn](../geometry/dsearchn.md), [delaunayn](../geometry/delaunayn.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
