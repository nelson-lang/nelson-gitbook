# triu

Upper triangular part of matrix

## 📝 Syntax

- T = triu(M)
- T = triu(M, k)

## 📥 Input argument

- M - 2D input matrix
- k - Diagonals to include: integer real value

## 📤 Output argument

- R - Upper Triangular Portions of Matrix

## 📄 Description

<b>triu</b> computes Upper Triangular Portions of Matrix.

<b>R = triu(M, k)</b> returns the elements on and above the kth diagonal of M.

## 💡 Example

```matlab
x = [1+i,-i;i,2i];
r = triu(x)
```

## 🔗 See also

[diag](../constructors_functions/diag.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
