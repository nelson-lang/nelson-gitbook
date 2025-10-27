# isapprox

Return true if arguments are approximately equal, within the precision.

## 📝 Syntax

- res = isapprox(x1, x2)
- res = isapprox(x1, x2, precision)

## 📥 Input argument

- x1 - a matrix, a sparse matrix of doubles, or a multidimensional matrix.
- x2 - a matrix, a sparse matrix of doubles, or a multidimensional matrix.
- precision - a double value: 0. by default

## 📤 Output argument

- res - a logical value

## 📄 Description

For matrices, the comparison is done using the Hilbert-Schmidt norm (aka Frobenius norm L2 norm).

<b>isapprox</b> manages complex numbers. In this case, the real parts of the input arguments are compared. If this fails, it returns false. If this succeeds, the imaginary parts are compared.

To compare values, NaN, Inf, -Inf and remaining values, are separated. As it is impossible to compare NaN values between them, we compare the indices where NaN value occurs. For infinity values, we also compare the indices where Inf values occurs.

## 💡 Examples

```matlab
A = pi
B = single(pi)
res = isapprox(A, B)
```

```matlab
A = pi
B = single(pi)
res = isapprox(A, B, 1e-4)
```

```matlab
A = [pi NaN]
res = isapprox(A, A)
```

```matlab
A = [pi NaN]
B = [pi + 2*eps, NaN]
res = isapprox(A, B)
res = isapprox(A, B, eps)
```

## 🔗 See also

[isequaln](../elementary_functions/isequaln.md), [isequal](../elementary_functions/isequal.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
