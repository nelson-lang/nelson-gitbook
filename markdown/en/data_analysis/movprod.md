# movprod

Moving product.

## 📝 Syntax

- R = movprod(A, window)
- R = movprod(A, window, d)

## 📥 Input argument

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Output argument

- R - Moving product.

## 📄 Description

<b>movprod</b> computes products over a centered moving window.

## 💡 Example

```matlab
A = [1 2 8 4 5];
R = movprod(A, 3)
```

## 🔗 See also

[prod](../data_analysis/prod.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
