# cell

Create cell array of empty matrices.

## 📝 Syntax

- C = cell()
- C = cell(m)
- C = cell(m, n)
- C = cell(m, n, ... , p)
- C = cell(sz)
- C = cell(A)

## 📥 Input argument

- m, n, ... , p - dimensions of the cell to create.
- sz - a vector of integer values (dimensions of the cell to create).
- A - a string array.

## 📤 Output argument

- C - a cell

## 📄 Description

<b>cell</b> returns a cell array of empty matrices.

<b>cell()</b> is equivalent to <b>cell(0)</b>

<b>cell(A)</b> with A a string array converts to cell.

## 💡 Examples

```matlab
A = eye(2, 4);
sz = size(A)
C = cell(sz)
```

```matlab
A = ["Nel", "son"; "open", "source"];
C = cell(A)
```

## 🔗 See also

[struct](../data_structures/struct.md), [iscell](../types/iscell.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
