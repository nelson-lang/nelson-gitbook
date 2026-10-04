# sortrows

Sort rows of an array.

## 📝 Syntax

- B = sortrows(A)
- B = sortrows(A, col)
- [B, index] = sortrows(...)

## 📥 Input argument

- A - array whose rows are sorted.
- col - column index or vector of column indices. A negative index requests descending order for that key.

## 📤 Output argument

- B - array with rows sorted according to the selected keys.
- index - row indices such that B = A(index,:).

## 📄 Description

Rows with equal selected keys retain their original order, including descending cell-string keys.

sortrows sorts rows of an array using one or more columns as keys.

Negative column indices request descending order for the corresponding key.

## Used function(s)

    sort

## 💡 Example

Sort rows by the first column ascending and the second column descending.

```matlab
A = [2 3; 1 4; 2 1];
[B, index] = sortrows(A, [1 -2])
```

## 🔗 See also

[sort](../../data_analysis/sort.md), [issorted](../../data_analysis/issorted.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
