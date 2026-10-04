# movsum

Moving sum.

## 📝 Syntax

- R = movsum(A, window)
- R = movsum(A, window, d)

## 📥 Input argument

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Output argument

- R - Moving sum.

## 📄 Description

<b>movsum</b> computes sums over a centered moving window.

## 💡 Example

```matlab
A = [1 2 8 4 5];
R = movsum(A, 3)
```

## 🔗 See also

[sum](../data_analysis/sum.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
