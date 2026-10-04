# mpower

Matrix power, ^ operator

## 📝 Syntax

- C = mpower(A, B)
- C = A ^ B

## 📥 Input argument

- A - a variable
- B - a variable

## 📤 Output argument

- C - result of A^B

## 📄 Description

<b>C = mpower(A, B)</b> performs matrix power operation: A^B

Sparse floating-point square matrices are supported for integer scalar exponents. Double, single, complex double, and complex single sparse matrices keep sparse storage when possible.

For non-integer scalar exponents, Nelson uses a dense matrix-function fallback when the sparse input class supports it.

## 💡 Examples

```matlab
mpower(3, 4)
3^4
```

```matlab
A = sparse(single([1 2; 3 4]));
R = A ^ 2
full(R)
```

## 🔗 See also

[power](../operators/power.md).

## 🕔 History

| Version | 📄 Description                                                 |
| ------- | -------------------------------------------------------------- |
| 1.0.0   | initial version                                                |
| 2.0.0   | expanded sparse single and complex single matrix power support |

<!--
## 👤 Author

Allan CORNET
-->
