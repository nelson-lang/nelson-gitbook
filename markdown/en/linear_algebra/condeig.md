# condeig

Condition number with respect to eigenvalues.

## 📝 Syntax

- C = condeig(A)
- [V, D, S] = condeig(A)

## 📥 Input argument

- A - Input matrix

## 📤 Output argument

- C - a vector of condition numbers for the eigenvalues of A.

## 📄 Description

<b>C = condeig(A)</b> returns a vector of condition numbers for the eigenvalues of <b>A</b>.

## 💡 Example

```matlab
A = [10, 20; 30, 40];
S = condeig(A)
```

## 🔗 See also

[eig](../linear_algebra/eig.md), [cond](../linear_algebra/cond.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
