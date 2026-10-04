# trace

Matrix trace.

## 📝 Syntax

- res = trace(x)

## 📥 Input argument

- x - a numeric value: scalar or matrix (double or single), dense or sparse

## 📤 Output argument

- res - a numeric value: a scalar

## 📄 Description

<b>trace(x)</b> computes the trace of x, the sum of the elements along the main diagonal.

Sparse double, single, complex double, and complex single matrices are supported. The result keeps single precision for single inputs.

## 💡 Examples

```matlab
X = [1 0; 0 3];
Y = trace(X)
```

```matlab
X = sparse(single([1 + 2i 0; 0 3]));
Y = trace(X)
```

## 🔗 See also

[eig](../../linear_algebra/eig.md).

## 🕔 History

| Version | 📄 Description                                 |
| ------- | ---------------------------------------------- |
| 1.0.0   | initial version                                |
| 2.0.0   | added sparse single and complex single support |

<!--
## 👤 Author

Allan CORNET
-->
