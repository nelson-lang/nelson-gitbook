# setdiff

Set difference of two arrays.

## 📝 Syntax

- C = setdiff(A, B)
- [C, ia] = setdiff(A, B)

## 📥 Input argument

- A, B - Input arrays.

## 📤 Output argument

- C - Sorted values that are in <b>A</b> and not in <b>B</b>.
- ia - Index vector into <b>A</b>.

## 📄 Description


<b>setdiff(A, B)</b> returns the sorted values that occur in <b>A</b> but not in <b>B</b>.

## 💡 Example



```matlab
A = [5 7 1];
B = [3 1 1];
C = setdiff(A, B)
```


## 🔗 See also

[union](../data_analysis/union.md), [intersect](../data_analysis/intersect.md), [setxor](../data_analysis/setxor.md).

## 🕔 History

| Version | 📄 Description     |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
