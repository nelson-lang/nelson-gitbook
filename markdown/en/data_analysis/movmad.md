# movmad

Moving median absolute deviation.

## 📝 Syntax

- R = movmad(A, window)
- R = movmad(A, window, d)

## 📥 Input argument

- A - input array.
- window - positive scalar window length.
- d - dimension to operate along: positive integer scalar.

## 📤 Output argument

- R - Moving median absolute deviation.

## 📄 Description

<b>movmad</b> computes the median absolute deviation over a centered moving window.

## 💡 Example

```matlab
A = [1 2 8 4 5];
R = movmad(A, 3)
```

## 🔗 See also

[median](../statistics/median.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
