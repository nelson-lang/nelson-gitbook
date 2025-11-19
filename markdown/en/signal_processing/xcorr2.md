# xcorr2

2-D cross-correlation.

## 📝 Syntax

- C = xcorr2(A)
- C = xcorr2(A, B)

## 📥 Input argument

- A - matrices
- B - matrices

## 📤 Output argument

- C - 2-D cross-correlation or autocorrelation matrix

## 📄 Description

<b>xcorr2(A, B)</b> calculates the cross-correlation between two matrices,<b>A</b> and <b>B</b>, in two dimensions, without any scaling applied.

## 💡 Example

```matlab
X = ones(2, 3);
H = [1 2; 3 4; 5 6];
C = xcorr2(H, X)
```

## 🔗 See also

[filter2](../signal_processing/filter2.md), [conv2](../data_analysis/conv2.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 1.3.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
