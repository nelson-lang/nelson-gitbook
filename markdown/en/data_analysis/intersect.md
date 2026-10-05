# intersect

Set intersection of two arrays.

## 📝 Syntax

- C = intersect(A, B)
- [C, ia, ib] = intersect(A, B)

## 📥 Input argument

- A, B - Input arrays.

## 📤 Output argument

- C - Sorted values common to <b>A</b> and <b>B</b>.
- ia, ib - Index vectors into <b>A</b> and <b>B</b>.

## 📄 Description


<b>intersect(A, B)</b> returns the sorted values that occur in both input arrays.

## 💡 Example



```matlab
A = [5 7 1];
B = [3 1 1];
C = intersect(A, B)
```


## 🔗 See also

[union](../data_analysis/union.md), [setdiff](../data_analysis/setdiff.md), [setxor](../data_analysis/setxor.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
