# convhulln

Convex hull in N dimensions

## 📝 Syntax

- K = convhulln(P)
- [K, V] = convhulln(P)
- K = convhulln(P, options)

## 📄 Description


<b>convhulln</b> computes the convex hull facets of the point matrix <b>P</b>. 

Rows of <b>K</b> contain one-based point indices. The second output is the enclosed measure reported for the hull.

## 💡 Example

Convex hull of a square.

```matlab
P = [0 0; 1 0; 1 1; 0 1];
[K, A] = convhulln(P)
```


## 🔗 See also

[convhull](../geometry/convhull.md), [delaunayn](../geometry/delaunayn.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | Initial version. |

<!--
## 👤 Author

Allan CORNET
-->
