# movmin

Moving minimum.

## 📝 Syntax

- R = movmin(A, window)
- R = movmin(A, window, d)

## 📥 Input argument

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Output argument

- R - Moving minimum.

## 📄 Description

<b>movmin</b> computes minimum values over a centered moving window.

## 💡 Example

```matlab
A = [1 2 8 4 5];
R = movmin(A, 3)
```

## 🔗 See also

[min](../data_analysis/min.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
