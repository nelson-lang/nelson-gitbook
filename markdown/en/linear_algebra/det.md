# det

Matrix determinant.

## 📝 Syntax

- res = det(x)

## 📥 Input argument

- x - a numeric value: scalar or square matrix (double or single)

## 📤 Output argument

- res - real or complex number (double or single), the determinant base 10.

## 📄 Description

<b>res = det(x)</b> returns the determinant of square matrix x.

For a
$$2 \times 2$$

matrix:
$$\det\begin{pmatrix} a & b \\ c & d \end{pmatrix} = ad - bc$$

For larger matrices, the determinant can be computed using cofactor expansion:
$$\det(A) = \sum_{j=1}^{n} (-1)^{i+j} a_{ij} M_{ij}$$

where
$$M_{ij}$$

is the minor of element
$$a_{ij}$$

## 💡 Example

```matlab
A = [10 -20 40; -50 20 0; 10 0 30]
D = det(A)

```

## 🔗 See also

[rcond](../linear_algebra/rcond.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
