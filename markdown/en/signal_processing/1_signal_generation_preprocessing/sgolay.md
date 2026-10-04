# sgolay

Savitzky-Golay filter coefficients.

## 📝 Syntax

- [B, G] = sgolay(K, F)
- [B, G] = sgolay(K, F, W)

## 📥 Input argument

- K - polynomial order.
- F - frame length.
- W - positive weighting vector.

## 📤 Output argument

- B - smoothing coefficient matrix.
- G - least-squares coefficient matrix.

## 📄 Description

<b>sgolay</b> computes local polynomial least-squares filter coefficients.

## 💡 Example

```matlab

[b, g] = sgolay(2, 5);

```

## 🔗 See also

[sgolayfilt](../../signal_processing/sgolayfilt.md).

## 🕔 History

| Version | 📄 Description  |
| ------- | --------------- |
| 2.0.0   | initial version |

<!--
## 👤 Author

Allan CORNET
-->
