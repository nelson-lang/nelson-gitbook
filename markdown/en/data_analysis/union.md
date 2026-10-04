# union

Set union of two arrays.

## 📝 Syntax

- C = union(A, B)
- [C, ia, ib] = union(A, B)

## 📥 Input argument

- A, B - Input arrays.

## 📤 Output argument

- C - Sorted values that are in <b>A</b> or <b>B</b>.
- ia, ib - Index vectors into <b>A</b> and <b>B</b>.

## 📄 Description

<b>union(A, B)</b> returns the sorted set of values that occur in either input array.

## 💡 Example

```matlab
A = [5 7 1];
B = [3 1 1];
C = union(A, B)
```

## 🔗 See also

[intersect](../data_analysis/intersect.md), [setdiff](../data_analysis/setdiff.md), [setxor](../data_analysis/setxor.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
