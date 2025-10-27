# mat2str

Matrix to String.

## 📝 Syntax

- res = mat2str(M)
- res = mat2str(M, 'class')
- res = mat2str(M, P, 'class')

## 📥 Input argument

- M - a numerical 2D matrix or logical.
- P - an integer value: precision, 15 by default.

## 📤 Output argument

- res - a string

## 📄 Description

<b>mat2str</b> converts a matrix to a string.

This string may be used to reconstruct the original matrix with <b>execstr</b> function.

## 💡 Example

```matlab
R = mat2str(pi)
R = mat2str(pi, 'class')
R = mat2str(pi, 4)
R = mat2str(pi + i, 'class')
execstr(['RB = ', R])

```

## 🔗 See also

[execstr](../core/execstr.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
