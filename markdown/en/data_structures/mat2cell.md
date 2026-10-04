# mat2cell

Split an array into a cell array.

## 📝 Syntax

- C = mat2cell(A, rowSizes)
- C = mat2cell(A, rowSizes, colSizes, ...)

## 📥 Input argument

- A - Input array.
- rowSizes - Block sizes for the first dimension.

## 📤 Output argument

- C - Cell array containing blocks of A.

## 📄 Description

<b>mat2cell</b> splits <b>A</b> into cells whose sizes are given for each dimension.

## 💡 Example

```matlab
C = mat2cell(reshape(1:12, [3 4]), [1 2], [3 1])
```

## 🔗 See also

[num2cell](../data_structures/num2cell.md), [cell2mat](../data_structures/cell2mat.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
