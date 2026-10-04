# setxor

Set exclusive OR of two arrays.

## 📝 Syntax

- C = setxor(A, B)
- [C, ia, ib] = setxor(A, B)

## 📥 Input argument

- A, B - Input arrays.

## 📤 Output argument

- C - Sorted values that are in only one of the input arrays.
- ia, ib - Index vectors into <b>A</b> and <b>B</b>.

## 📄 Description

<b>setxor(A, B)</b> returns values that occur in <b>A</b> or <b>B</b>, but not both.

## 💡 Example

```matlab
A = [5 7 1];
B = [3 1 1];
C = setxor(A, B)
```

## 🔗 See also

[union](../data_analysis/union.md), [intersect](../data_analysis/intersect.md), [setdiff](../data_analysis/setdiff.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
