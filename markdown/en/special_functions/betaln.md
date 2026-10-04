# betaln

Logarithm of the beta function.

## 📝 Syntax

- L = betaln(Z, W)

## 📥 Input argument

- Z - real scalar, vector, or matrix.
- W - real scalar, vector, or matrix.

## 📤 Output argument

- L - natural logarithm of the beta function.

## 📄 Description

<b>betaln</b> computes the natural logarithm of the beta function, log(beta(Z,W)), without the underflow or overflow that a direct computation may cause for large Z and W.

## 💡 Example

```matlab
L = betaln(10, 20)
```

## 🔗 See also

[beta](../special_functions/beta.md), [gammaln](../special_functions/gammaln.md), [gamma](../special_functions/gamma.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
