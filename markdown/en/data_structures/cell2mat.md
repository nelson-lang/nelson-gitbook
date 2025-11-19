# cell2mat

Transform a cell array containing matrices into a single, concatenated matrix.

## 📝 Syntax

- M = cell2mat(ce)

## 📥 Input argument

- ce - a cell.

## 📤 Output argument

- M - array.

## 📄 Description

<b>M = cell2smat(ce)</b> creates a single matrix by merging all elements within the cell array<b>ce</b> into a multi-dimensional array. The elements in<b>c</b> can consist of numeric, logical, or character matrices, cell arrays, or structs, and they must be compatible for concatenation using<b>cat</b> function.

## 💡 Example

```matlab
C = {[10], [20 30 40]; [90; 50], [60 76 88; 110 111 112]};
 M = cell2mat(C)
```

## 🔗 See also

[cell](../data_structures/cell.md), [struct](../data_structures/struct.md), [struct2cell](../data_structures/struct2cell.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
