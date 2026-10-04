# logm

Computes the matrix logarithm of a square matrix.

## 📝 Syntax

- res = logm(x)

## 📥 Input argument

- x - a numeric value: scalar or square matrix (double or single)

## 📤 Output argument

- res - a numeric value: a square matrix

## 📄 Description

<b>expm(x)</b> computes the matrix logarithm of x.

The computation is performed by first block-diagonalizing x and then applying a Pade approximation on each block.

## 💡 Example

```matlab
A = eye(3, 3);
res = logm(A)
res = logm(A+i)
```

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
