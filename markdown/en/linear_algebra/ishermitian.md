# ishermitian

Computes if matrix is hermitian or skew-hermitian.

## 📝 Syntax

- res = ishermitian(x)
- res = ishermitian(x, 'skew')
- res = ishermitian(x, 'nonskew')

## 📥 Input argument

- x - a numeric value: scalar or matrix (double or single, integers, logical).

## 📤 Output argument

- res - a logical.

## 📄 Description

<b>ishermitian(x)</b> computes if matrix is hermitian or skew-hermitian.

A matrix is skew-hermitian if the complex conjugate transpose of the matrix is equal to the negative of the original matrix.

## 💡 Example

```matlab
ishermitian([1 0 1i; 0 1 0; -1i 0 1])
```

## 🔗 See also

[issymmetric](../linear_algebra/issymmetric.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

## 👤 Author

Allan CORNET
