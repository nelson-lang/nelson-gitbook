# schur

Schur decomposition.

## 📝 Syntax

- T = schur(M)
- T = schur(M, 'real')
- T = schur(M, 'complex')
- [U, T] = schur(M)
- [U, T] = schur(M, 'complex')
- [U, T] = schur(M, 'real')

## 📥 Input argument

- M - a numeric value: scalar or square matrix (double or single)

## 📤 Output argument

- U - unitary matrix
- T - upper triangular matrix

## 📄 Description

<b>schur(M)</b> computes the schur decomposition.

With the flag 'complex', the complex schur form is upper triangular with the eigenvalues of M on the diagonal.

If A is real, the real schur form is returned.

With the flag 'real', the real schur form has the real eigenvalues on the diagonal and the complex eigenvalues in 2-by-2 blocks on the diagonal.

## 💡 Example

```matlab
X = [1 2; 3 4];
[U, T] = schur(X)
[U, T] = schur(X * i, 'complex')
[U, T] = schur(X * i, 'real')
```

## 🔗 See also

[eig](../linear_algebra/eig.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
